// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
//= require zeroclipboard
//= require jquery2
//= require jquery_ujs
//= require_tree
//= require bootstrap-sprockets
//= require bootstrap-select
//= require clipboard
//= require money-format

//= require action_cable
//= require_self
//= require_tree ./channels
//= require jquery.autosize
//= require bootag.js
//= require json-formatter

"./app/assets/javascripts/"

$(document).ready(function(){
    console.log("clipboard");

    var clipboard = new Clipboard('.clipboard-btn');

    function ids() {
        return "#add_client, " +
        "#add_all_client, " +
        "#add_all_client_1, " +
        "#add_all_client_2, " +
        "#create_client_ul, " +
        "#create_client_ip, " +
        "#create_dul, " +
        "#create_trust," +
        "#add_compliance," +
        "#add_buh_account," +
        "#add_actualization," +
        "#add_rur," +
        "#add_usd," +
        "#add_eur," +
        "#create_corp, " +
        "#create_account," +
        "#add_other_cash_acc," +
        "#fee," +
        "#cur," +
        "#add_ban," +
        "#add_nib_role," +
        "#delete_compliance," +
        "#add_code_word," +
        ".icon-upload-csv"
    }

    $(".loader").hide();

    $(document).ajaxStart(function(){
        $(".lds-hourglass").show();
        $(".loader").show();
        $('#create_client_container').css("filter", "blur(2px)")
    });

    $(document).ajaxStop(function(){
        $('#create_client_container').css("filter", "blur(0px)")
        $(".lds-hourglass").hide();
        $(".loader").hide();
    });

    $('#open-from-browser').click(function() {
        console.log('close');
        $('#modal').modal('hide')
    } )

    // $('ul.dropdown-menu').on('click', function(event){
    //     event.stopImmediatePropagation();
    // });

    $(document).ready(function() {
        $('#add_from_file').hide();
        $('#add_from_file2').click(function() {
            $('#add_from_file').show('500');
            $('#add_from_file2').hide();
        })

        $('#upload_dump').hide();
        $('#upload_dump2').click(function() {
            $('#upload_dump').show('500');
            $('#upload_dump2').hide();
        })
    })

//  /////////////////////\
    Highcharts.theme = {
        colors: ['#2b908f', '#90ee7e', '#f45b5b', '#7798BF', '#aaeeee', '#ff0066',
            '#eeaaee', '#55BF3B', '#DF5353', '#7798BF', '#aaeeee'
        ],
        chart: {
            backgroundColor: {
                linearGradient: {
                    x1: 0,
                    y1: 0,
                    x2: 1,
                    y2: 1
                },
                stops: [
                    [0, '#2a2a2b'],
                    [1, '#3e3e40']
                ]
            },
            style: {
                fontFamily: '\'Monaco\', sans-serif'
            },
            plotBorderColor: '#606063'
        },
        title: {
            style: {
                color: '#E0E0E3',
                textTransform: 'uppercase',
                fontSize: '20px'
            }
        },
        subtitle: {
            style: {
                color: '#E0E0E3',
                textTransform: 'uppercase'
            }
        },
        xAxis: {
            gridLineColor: '#707073',
            labels: {
                style: {
                    color: '#E0E0E3'
                }
            },
            lineColor: '#707073',
            minorGridLineColor: '#505053',
            tickColor: '#707073',
            title: {
                style: {
                    color: '#A0A0A3'

                }
            }
        },
        yAxis: {
            gridLineColor: '#707073',
            labels: {
                style: {
                    color: '#E0E0E3'
                }
            },
            lineColor: '#707073',
            minorGridLineColor: '#505053',
            tickColor: '#707073',
            tickWidth: 1,
            title: {
                style: {
                    color: '#A0A0A3'
                }
            }
        },
        tooltip: {
            backgroundColor: 'rgba(0, 0, 0, 0.85)',
            style: {
                color: '#F0F0F0'
            }
        },
        plotOptions: {
            series: {
                dataLabels: {
                    color: '#F0F0F3',
                    style: {
                        fontSize: '13px'
                    }
                },
                marker: {
                    lineColor: '#333'
                }
            },
            boxplot: {
                fillColor: '#505053'
            },
            candlestick: {
                lineColor: 'white'
            },
            errorbar: {
                color: 'white'
            }
        },
        legend: {
            backgroundColor: 'rgba(0, 0, 0, 0.5)',
            itemStyle: {
                color: '#E0E0E3'
            },
            itemHoverStyle: {
                color: '#FFF'
            },
            itemHiddenStyle: {
                color: '#606063'
            },
            title: {
                style: {
                    color: '#C0C0C0'
                }
            }
        },
        credits: {
            style: {
                color: '#666'
            }
        },
        labels: {
            style: {
                color: '#707073'
            }
        },

        drilldown: {
            activeAxisLabelStyle: {
                color: '#F0F0F3'
            },
            activeDataLabelStyle: {
                color: '#F0F0F3'
            }
        },

        navigation: {
            buttonOptions: {
                symbolStroke: '#DDDDDD',
                theme: {
                    fill: '#505053'
                }
            }
        },

        // scroll charts
        rangeSelector: {
            buttonTheme: {
                fill: '#505053',
                stroke: '#000000',
                style: {
                    color: '#CCC'
                },
                states: {
                    hover: {
                        fill: '#707073',
                        stroke: '#000000',
                        style: {
                            color: 'white'
                        }
                    },
                    select: {
                        fill: '#000003',
                        stroke: '#000000',
                        style: {
                            color: 'white'
                        }
                    }
                }
            },
            inputBoxBorderColor: '#505053',
            inputStyle: {
                backgroundColor: '#333',
                color: 'silver'
            },
            labelStyle: {
                color: 'silver'
            }
        },

        navigator: {
            handles: {
                backgroundColor: '#666',
                borderColor: '#AAA'
            },
            outlineColor: '#CCC',
            maskFill: 'rgba(255,255,255,0.1)',
            series: {
                color: '#7798BF',
                lineColor: '#A6C7ED'
            },
            xAxis: {
                gridLineColor: '#505053'
            }
        },

        scrollbar: {
            barBackgroundColor: '#808083',
            barBorderColor: '#808083',
            buttonArrowColor: '#CCC',
            buttonBackgroundColor: '#606063',
            buttonBorderColor: '#606063',
            rifleColor: '#FFF',
            trackBackgroundColor: '#404043',
            trackBorderColor: '#404043'
        }
    };

    // Apply the theme
    Highcharts.setOptions(Highcharts.theme);

});
