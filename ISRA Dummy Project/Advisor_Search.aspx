<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advisor_Search.aspx.cs" Inherits="ISRA_Dummy_Project.Advisor_Search" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Advisor_Search.css" rel="stylesheet" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="nav.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <nav>
            ISRA
        <links>
            <a href="Advisor_RequestDetails.aspx">View Requests
            </a>
            <a href="Advisor_Admin.aspx">Admin
            </a>
        </links>
            <button>
                Logout
            </button>
        </nav>

        <filter>
            <filtertitle>
                Filter By:
            </filtertitle>
            <!--
            <div class="dropdown ms-3">
                <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                    Dropdown button
                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
                    <li><a class="dropdown-item" href="#">Action</a></li>
                    <li><a class="dropdown-item" href="#">Another action</a></li>
                    <li><a class="dropdown-item" href="#">Something else here</a></li>
                </ul>
            </div>-->

            <div class="mb-3">
                <label for="applicationType" class="form-label">Application Type</label>
                <select id="applicationType" class="form-select">
                    <option>Any</option>
                    <option>Independent Study</option>
                    <option></option>
                </select>
            </div>

            <div class="mb-3">
                <label for="course" class="form-label">Course</label>
                <select id="course" class="form-select">
                    <option>Any</option>
                    <option>1738</option>
                    <option>ay</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="semester" class="form-label">Semester</label>
                <select id="semester" class="form-select">
                    <option>Any</option>
                    <option>Fall 2023</option>
                    <option>Spring 2024</option>
                    <option>Fall 2024</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="registeredBy" class="form-label">Registered by</label>
                <select id="registeredBy" class="form-select">
                    <option>Any</option>
                    <option>Earliest</option>
                    <option>Latest</option>
                </select>
            </div>

            <div class="mb-3">
                <label for="status" class="form-label">Status</label>
                <select id="status" class="form-select">
                    <option>Any</option>
                    <option>Completed</option>
                    <option>In Progress</option>
                    <option>Denied</option>
                </select>
            </div>

            <br />

            <filtertitle>
                Sort By:
            </filtertitle>

            <div class="form-check form-switch">
                <label class="form-check-label" for="flexSwitchCheckDefault">Alphabetical (name)</label>
                <input class="form-check-input" type="checkbox" id="alphabetical" />
            </div>

            <div class="form-check form-switch">
                <label class="form-check-label" for="flexSwitchCheckDefault">Newest to Oldest</label>
                <input class="form-check-input" type="checkbox" id="newtoold" />
            </div>

            <div class="form-check form-switch">
                <label class="form-check-label" for="flexSwitchCheckDefault">Oldest to Newest</label>
                <input class="form-check-input" type="checkbox" id="oldtonew" />
            </div>
        </filter>

        <content>
            <contentTitle>
                Results (4)
            </contentTitle>
            <contentBox>

                <section>
                    <img src="pics/is.png"/>
                    <studentInfo>
                        <studentHeader>
                            Kevin Jawn
                            <formType value="is"></formType>
                        </studentHeader>
                        <courseInfo>CIS 2082 | Fall 2023</courseInfo>
                        <approval value="p"></approval>
                    </studentInfo>
                    <button type="button" class="btn btn-danger">View Request</button>
                </section>
                
                <section>
                    <img src="pics/is.png"/>
                    <studentInfo>
                        <studentHeader>
                            Angelica Kim
                            <formType value="is"></formType>
                        </studentHeader>
                        <courseInfo>CIS 2082 | Fall 2023</courseInfo>
                        <approval value="a"></approval>
                    </studentInfo>
                    <button type="button" class="btn btn-danger">View Request</button>
                </section>

                <section>
                    <img src="pics/is.png"/>
                    <studentInfo>
                        <studentHeader>
                            Brian Jang
                            <formType value="ur"></formType>
                        </studentHeader>
                        <courseInfo>CIS 2082 | Fall 2023</courseInfo>
                        <approval value="p"></approval>
                    </studentInfo>
                    <button type="button" class="btn btn-danger">View Request</button>
                </section>

                <section>
                    <img src="pics/is.png"/>
                    <studentInfo>
                        <studentHeader>
                            Hong Son
                            <formType value="is"></formType>
                        </studentHeader>
                        <courseInfo>CIS 2082 | Fall 2023</courseInfo>
                        <approval value="p"></approval>
                    </studentInfo>
                    <button type="button" class="btn btn-danger">View Request</button>
                </section>

            </contentBox>
        </content>
    </form>
</body>
</html>
