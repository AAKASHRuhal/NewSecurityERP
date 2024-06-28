<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="TrackingDashboard.aspx.cs" Inherits="NewSecurityERP.TrackingDashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content overflow-hidden">
        <div class="page-content">
            <div class="container-fluid">

                <div class="row">
                    <div class="col-xl-3 col-md-6">
                        <div class="card card-animate">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h4 class="mt-0 ff-secondary fw-semibold">Total Supervisor</h4>
                                        <h4 class="mb-0 text-muted">8</h4>
                                    </div>
                                    <div>
                                        <div class="avatar-sm flex-shrink-0">
                                            <span class="avatar-title bg-info-subtle rounded-circle fs-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users text-info material-shadow">
                                                    <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card card-animate">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h4 class="mt-0 ff-secondary fw-semibold">Total Client</h4>
                                        <h4 class="mb-0 text-muted">6</h4>
                                    </div>
                                    <div>
                                        <div class="avatar-sm flex-shrink-0">
                                            <span class="avatar-title bg-info-subtle rounded-circle fs-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users text-info material-shadow">
                                                    <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card card-animate">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h4 class="mt-0 ff-secondary fw-semibold">Total Unit</h4>
                                        <h4 class="mb-0 text-muted">12</h4>
                                    </div>
                                    <div>
                                        <div class="avatar-sm flex-shrink-0">
                                            <span class="avatar-title bg-info-subtle rounded-circle fs-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users text-info material-shadow">
                                                    <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-md-6">
                        <div class="card card-animate">
                            <div class="card-body">
                                <div class="d-flex justify-content-between">
                                    <div>
                                        <h4 class="mt-0 ff-secondary fw-semibold">Total Branch</h4>
                                        <h4 class="mb-0 text-muted">18</h4>
                                    </div>
                                    <div>
                                        <div class="avatar-sm flex-shrink-0">
                                            <span class="avatar-title bg-info-subtle rounded-circle fs-2">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-users text-info material-shadow">
                                                    <path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"></path><circle cx="9" cy="7" r="4"></circle><path d="M23 21v-2a4 4 0 0 0-3-3.87"></path><path d="M16 3.13a4 4 0 0 1 0 7.75"></path></svg>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


                <div class="row">
                    <div class="col-md-6">
                        <div class="card card-height-100">
                            <div class="card-header align-items-center d-flex">
                                <h4 class="card-title mb-0 flex-grow-1">Supervisor Overview</h4>
                                <div class="flex-shrink-0">
                                    <ul class="nav justify-content-end nav-tabs-custom rounded card-header-tabs border-bottom-0" role="tablist">
                                        <li class="nav-item">
                                            <a class="btn btn-soft-success btn-sm material-shadow-none active" data-bs-toggle="tab" href="#online" role="tab" aria-selected="false"><i class="ri-wifi-line align-middle me-1"></i>Online - <asp:Label ID="ActiveUserCount" runat="server"></asp:Label></a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="btn btn-soft-danger btn-sm material-shadow-none ms-2" data-bs-toggle="tab" href="#offline" role="tab" aria-selected="true"><i class="ri-wifi-off-line align-middle me-1"></i>Offline - <asp:Label ID="InActiveUserCount" runat="server"></asp:Label></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="card-body" style="background: #e9ebec; height: 400px;" data-simplebar>
                                <div class="tab-content p-0">
                                    <div class="tab-pane fade active show" id="online" role="tabpanel">
                                        <asp:Repeater ID="repeaterActiveUsers" runat="server">
                                            <ItemTemplate>
                                                <div class="row gy-2 mb-2">
                                                    <div class="col-12">
                                                        <div class="card mb-0">
                                                            <div class="card-body">
                                                                <div class="d-lg-flex align-items-center">
                                                                    <div class="flex-shrink-0">
                                                                        <div class="avatar-sm rounded">
                                                                            <img src="https://themesbrand.com/velzon/html/master/assets/images/users/avatar-10.jpg" alt="" class="member-img img-fluid d-block rounded">
                                                                        </div>
                                                                    </div>
                                                                    <div class="flex-grow-1 ms-3">
                                                                        <h5 class="fs-16 mb-2"><%# Eval("username") %></h5>
                                                                        <p class="text-info mb-0"><b>PunchIn Time :</b> <%# Eval("PunchInTime") %></p>
                                                                    </div>
                                                                    <div class="flex-shrink-0 text-end">
                                                                        <span class="badge lh-base mb-2 bg-success"><%# Eval("Status") %></span>
                                                                        <a href="#">
                                                                            <p class="text-danger fs-13 mb-0">View Details</p>
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>

                                    </div>
                                    <div class="tab-pane fade" id="offline" role="tabpanel">
                                        <asp:Repeater ID="repeaterInActiveUser" runat="server">
                                            <ItemTemplate>
                                                <div class="row gy-2 mb-2">
                                                    <div class="col-12">
                                                        <div class="card mb-0">
                                                            <div class="card-body">
                                                                <div class="d-lg-flex align-items-center">
                                                                    <div class="flex-shrink-0">
                                                                        <div class="avatar-sm rounded">
                                                                            <img src="https://themesbrand.com/velzon/html/master/assets/images/users/avatar-10.jpg" alt="" class="member-img img-fluid d-block rounded">
                                                                        </div>
                                                                    </div>
                                                                    <div class="flex-grow-1 ms-3">
                                                                        <h5 class="fs-16 mb-2"><%# Eval("username") %></h5>
                                                                        <p class="text-danger mb-0">PunchOut Time : <%# Eval("PunchOutTime") != DBNull.Value ? Eval("PunchOutTime") : "Not logged in yet!" %></p>
                                                                    </div>
                                                                    <div class="flex-shrink-0 text-end">
                                                                        <span class="badge lh-base mb-2 bg-danger"><%# Eval("Status") %></span>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="card card-height-100">
                            <div class="card-header align-items-center d-flex">
                                <h4 class="card-title mb-0 flex-grow-1">Map Overview</h4>
                            </div>
                            <div class="card-body p-0">
                                <div id="map" style="height: 400px;"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolderJavaScript" runat="server">
    <%--<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDvFyDCnIOEovByhli-Q9UdEaO9dcjMC4k&loading=async&callback=initMap"></script>--%>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDvFyDCnIOEovByhli-Q9UdEaO9dcjMC4k&loading=async&callback=initMap&libraries=maps,marker&v=weekly"></script>

    <script>
        var map;
        var userLocations = [];
        var openInfoWindow = null;

        // Function To Initilize the MAP
        function initMap() {
            // old map option
            //map = new google.maps.Map(document.getElementById("map"), {
            //    center: { lat: 28.6139, lng: 77.2088 },
            //    zoom: 10
            //});

            // advance map option
            map = new google.maps.Map(document.getElementById("map"), {
                zoom: 10,
                center: { lat: 28.6139, lng: 77.2088 },
                mapId: "DEMO_MAP_ID", // Map ID is required for advanced markers.
            });
            fetchUsersLiveLocations();

            initMap = function () { };
        }

        function fetchUsersLiveLocations() {
            $.ajax({
                url: 'https://localhost:44329/trackingAPI/GetUsersLiveLocation',
                type: 'POST',
                async: 'true',
                contentType: 'application/json',
                success: function (data) {
                    if (data.OutputCode == "200") {
                        userLocations = data.Data.map(userData => ({
                            lat: parseFloat(userData.Latitude),
                            lng: parseFloat(userData.Longitude),
                            name: userData.UserName,
                            empCode: userData.EmpCode,
                            address: userData.Address,
                            batteryPercentage: userData.BatteryPercentage,
                          //  lastSyncTime: userData.LocationTime
                            lastSyncTime: new Date(userData.LocationTime).toLocaleString('en-GB', {
                                day: '2-digit',
                                month: '2-digit',
                                year: 'numeric',
                                hour: '2-digit',
                                minute: '2-digit',
                                second: '2-digit'
                            })
                        }));

                        // Call function to add markers for active users
                        addMarkersForActiveUsers();
                    }
                    else {
                        error(data.OutputMessage);
                    }
                },
                error: function (xhr, status, errorMsg) {
                    error(errorMsg);
                }
            });
        }

        // Function To Add Markers For Users.
        function addMarkersForActiveUsers() {
            // Loop through user locations and add markers
            userLocations.forEach(location => {
                // advance map option
                let background;
                let borderColor;
                if (location.batteryPercentage >= 70) {
                    background = '#3bb15e'; // Full charge (green)#3bb15e
                    borderColor = '#3bb15e';
                } else if (location.batteryPercentage >= 20 && location.batteryPercentage < 70) {
                    background = '#fcc401'; // Medium charge (yellow)
                    borderColor = '#fcc401';
                } else if (location.batteryPercentage >= 5 && location.batteryPercentage < 20) {
                    background = '#f48023'; // Low charge (orange)
                    borderColor = '#f48023';
                } else {
                    background = '#ed4c3e'; // Empty charge (red)
                    borderColor = '#ed4c3e';
                }

                const pinBackground = new google.maps.marker.PinElement({
                    background: background,
                    glyphColor: "white",
                    borderColor: borderColor
                });

                // old map options
                //var iconColor;
                //if (location.batteryPercentage >= 70) {
                //    iconColor = 'https://maps.google.com/mapfiles/ms/icons/green-dot.png'; // Full charge (green)
                //} else if (location.batteryPercentage >= 20 && location.batteryPercentage < 70) {
                //    iconColor = 'https://maps.google.com/mapfiles/ms/icons/yellow-dot.png'; // Medium charge (yellow)
                //} else if (location.batteryPercentage >= 5 && location.batteryPercentage < 20) {
                //    iconColor = 'https://maps.google.com/mapfiles/ms/icons/orange-dot.png'; // Low charge (orange)
                //} else {
                //    iconColor = 'https://maps.google.com/mapfiles/ms/icons/red-dot.png'; // Empty charge (red)
                //}

                //var marker = new google.maps.Marker({
                //    position: { lat: location.lat, lng: location.lng },
                //    map: map,
                //    title: location.name, // Set marker title
                //    icon: iconColor // Set marker icon
                //});

                // advance map option
                const marker = new google.maps.marker.AdvancedMarkerElement({
                    map: map,
                    position: { lat: location.lat, lng: location.lng },
                    title: location.name,
                    content: pinBackground.element,
                });

                // Create an info window content for the marker
                const contentString = '<div id="content">' +
                    '<h4>' + location.name + '</h3>' +
                    '<p><strong>Current Address :</strong> ' + location.address + '</p>' +
                    '<p><strong>Battery Percentage :</strong> ' + location.batteryPercentage + '%</p>' +
                    '<p><strong>Last Sync Time :</strong> ' + location.lastSyncTime + '</p>' +
                    '</div>';

                const infowindow = new google.maps.InfoWindow({
                    content: contentString
                });

                attachInfoWindow(marker, infowindow);
            });

            function attachInfoWindow(marker, infowindow) {
                marker.addListener("click", () => {
                    if (openInfoWindow) {
                        openInfoWindow.close();
                    }
                    infowindow.open({
                        anchor: marker,
                        map: map,
                    });
                    openInfoWindow = infowindow;
                });
            }
        }
    </script>
</asp:Content>
