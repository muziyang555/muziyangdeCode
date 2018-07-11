/**
 * 
 */
$(function () {  
    $(document).ready(function() {  
        Highcharts.setOptions({  
            global: {  
                useUTC: false  
            }  
        });  
      
        var chart;  
        chart = new Highcharts.Chart({  
            chart: {  
                renderTo:'container',  
                type: 'spline',  
                animation: Highcharts.svg, // don't animate in old IE  
                marginRight: 10,  
                events: {  
                    load: function() {  
      
                        // set up the updating of the chart each second  
                        var series = this.series[0];  
                        setInterval(function() {  
                            var x = time, // current time  
                                y = moneyout;  
                            series.addPoint([x, y], true, true);  
                        }, 1000);  
                    }  
                }  
            },  
            title: {  
                text: '支出情况'  
            },  
            xAxis: {  
                type: 'datetime',  
                tickPixelInterval: 150  
            },  
            yAxis: {  
                max:100,  
                min:0,  
                title: {  
                    text: 'y轴'  
                },  
                plotLines: [{  
                    value: 0,  
                    width: 1,  
                    color: '#808080'  
                }]  
            },  
            tooltip: {  
                formatter: function() {  
                        return '<b>'+ this.series.name +'</b><br/>'+  
                        Highcharts.dateFormat('%Y-%m-%d', this.x) +'<br/>'+  
                        Highcharts.numberFormat(this.y, 2);  
                }  
            },  
            legend: {  
                enabled: true  
            },  
            exporting: {  
                enabled: false  
            },  
            series: [{  
                name: '支出情况',  
                data: (function() {  
                    // generate an array of random data  
                    var data = [],  
                        time = (new Date()).getTime(),  
                        i;  
      
                    for (i = -19; i <= 0; i++) {  
                        data.push({  
                            x: time ,  
                            y: moneyout  
                        });  
                    }  
                    return data;  
                })()  
            }]  
        });  
        function getData() {  
            $.post("data!sendData.action", function(data) {  
                var x = new Date().getTime();  
                var y = data;  
                var series = chart.series[0];  
                 series.addPoint([x, y], true, true);   
            },"json");  
        }  
        setInterval(getData,1000);  
    });  
});  