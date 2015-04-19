$(function () {
    $('#chen').highcharts({
        title: {
            text: '酒仙桥机房'
        },
	exporting: {
            enabled:false
	},
	credits: {
          enabled:false
	},
        series: [{
            type: 'pie',
            data: [
                ['路由器',   45.0],
                ['交换机',       26.8],
                ['防火墙',    8.5],
                ['服务器',     6.2],
                ['其他设备',   0.7]
            ]
        }]
    });
//////////////////////////////////////////
    $('#chen_2').highcharts({
        title: {
            text: '西单机房'
        },
        exporting: {
            enabled:false
        },
        credits: {
          enabled:false
        },
        series: [{
            type: 'pie',
            data: [
                ['路由器',   45.0],
                ['交换机',       26.8],
                ['防火墙',    8.5],
                ['服务器',     6.2],
                ['其他设备',   0.7]
            ]
        }]
    });
//////////////////////////////////////////
    $('#chen_3').highcharts({
        title: {
            text: '安贞门机房'
        },
        exporting: {
            enabled:false
        },
        credits: {
          enabled:false
        },
        series: [{
            type: 'pie',
            data: [
                ['路由器',   45.0],
                ['交换机',       26.8],
                ['防火墙',    8.5],                                                                                 
                ['服务器',     6.2],
                ['其他设备',   0.7]
            ]
        }]
    });
///////////////////////////////////////////
    $('#chen_4').highcharts({
        chart: {
            type: 'area'
        },
        title: {
            text: '22222222222222222'
        },
        exporting: {
            enabled:false
        },
        credits: {
          enabled:false
        },

        xAxis: {
            labels: {
                formatter: function() {
                    return this.value; // clean, unformatted number for year
                }
            }
        },
        yAxis: {
            title: {
                text: 'Nuclear weapon states'
            },
            labels: {
                formatter: function() {
                    return this.value / 1000 +'k';
                }
            }
        },
        tooltip: {
            pointFormat: '{series.name} produced <b>{point.y:,.0f}</b><br/>warheads in {point.x}'
        },
        plotOptions: {
            area: {
                pointStart: 1940,
                marker: {
                    enabled: false,
                    symbol: 'circle',
                    radius: 2,
                    states: {
                        hover: {
                            enabled: true
                        }
                    }
                }
            }
        },
        series: [{
            name: 'USA',
            data: [
            		32040, 31233, 29224, 27342, 26662,26956, 27912, 28999, 28965, 27826, 25579,

            ]
        }, {
            name: 'USSR/Russia',
            data: [
            	7089, 8339, 9399, 10538, 11643, 13092, 14478,15915, 17385, 19055, 21205,
            	
            	
            ]
        }]
    });
});				
