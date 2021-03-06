<%@ Page Language="VB" %>

<!DOCTYPE html>
<html>
<head id="Head1" runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=EDGE" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="Delta College Signup">
    <meta name="keywords" content="Delta College, Signup">
    <meta name="author" content="Delta College - OIT">

    <script src="Scripts/jquery-3.1.1.js"></script>
    <script src="Scripts/modernizr-2.8.3.js"></script>

    <title>Delta College Sign Up</title>

    <link href="Content/styles.css" rel="stylesheet" />
    <link href="Content/fonts.css" rel="stylesheet" />
    <link href="Content/app.css" rel="stylesheet" />

    <link rel="shortcut icon" type="img/x-icon" href="favicon.ico" />

    <%--HTML5 shiv script in order to allow styling of HTML5 elements in older IE browsers--%>
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
</head>
<body>
    <div class="body-container">
        <style>
            body > div > div {
                display: block;
                width: 100%;
                float: left;
                padding: 0px;
            }

                body > div > div a {
                    display: block;
                    background: url("images/DeltaLogo.png") no-repeat;
                    background-position: center;
                    background-color: #00704A;
                    color: #00704A;
                    width: 240px;
                    height: 155px;
                    margin-left: 200px;
                    -ms-border-bottom-right-radius: 15px !important;
                    -ms-border-bottom-left-radius: 15px !important;
                    -webkit-border-bottom-right-radius: 15px;
                    -webkit-border-bottom-left-radius: 15px;
                    -moz-border-radius-bottomright: 15px;
                    -moz-border-radius-bottomleft: 15px;
                    border-bottom-right-radius: 15px !important;
                    border-bottom-left-radius: 15px !important;
                }

                body > div > div > a > span {
                    min-height: 100px !important;
                }

                body > div > div > a > span {
                    display: block;
                    position: relative;
                    width: 100%;
                    height: 0;
                    pointer-events: none;
                }

                    body > div > div > a > span > svg {
                        position: absolute;
                        top: 0;
                        left: 0;
                        width: 100%;
                        height: 100%;
                        vertical-align: middle;
                        padding: 5px;
                    }

            svg {
                fill: currentColor;
            }

            body > div > div > a > span > svg > use {
                color: white;
                height: auto;
                width: auto;
            }
        </style>

        <div class="header__logo">
            <a href="/" title="Delta College">
                <%-- <span class="svgstore svgstore--Delta-College-Logo">
	                <svg>
                        <use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="/images/DeltaLogo.png"></use>
	                </svg>
                </span>--%>
            </a>
        </div>
        <form id="form1" runat="server">
            <div>
                <table class="PageBoundingBox">
                    <tr>
                        <td>
                            <table class="ContentBoundingBox">
                                <tr>
                                    <!-- 1 Column Style -->
                                    <!-- START MAIN Column Content Area -->
                                    <td class="MainContent">
                                        <div class="container">
                                            <table>
                                                <tr>
                                                    <td class="homebranding">
                                                        <div class="homeBranding">
                                                            <div class="Eraug">
                                                                <h1 style="padding-left: 1.5em;">Delta College's Acceptable Use Guidelines</h1>
                                                                <br />
                                                                <hr />
                                                            </div>
                                                            <div class="Eraug">
                                                                <ol>
                                                                    <li><span>By accessing College electronic resources you assume personal responsibility
																for their appropriate use and agree to comply with all applicable College policies
																and procedures as well as external networks' policies and procedures, local, state
																and federal laws and regulations.<?xml namespace="" ns="urn:schemas-microsoft-com:office:office"
                                                                    prefix="o" ?><?xml namespace="" prefix="O" ?><o:p></o:p></span> </li>
                                                                    <li class="MsoNormal" style="background: white; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1"><span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">You are solely responsible for your access and use, and may not transfer or share
																your passwords or account.<o:p></o:p></span> </li>
                                                                    <li class="MsoNormal" style="background: white; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1">
                                                                        <?xml namespace="" ns="urn:schemas-microsoft-com:office:smarttags" prefix="st1" ?>
                                                                        <?xml namespace="" prefix="ST1" ?>
                                                                        <st1:place w:st="on"></st1:place>
                                                                        <st1:placename w:st="on"></st1:placename>
                                                                        <span>Delta</span><span>
                                                                            <st1:placetype w:st="on"></st1:placetype>
                                                                            College</span><span> electronic resources are provided to support the college mission.
																Uses such as private business use or use for personal gain, non-profit activities,
																advertising and fundraising not related to the college are prohibited. Excessive
																personal use for activities such as game playing, financial transactions or communicating
																with family and friends is also prohibited.<o:p></o:p></span> </li>
                                                                    <li class="MsoNormal" style="background: white; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1"><span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">Uses that threaten the integrity of any system or its contents, the function of
																resources accessed through the system, the privacy or safety of anyone, or that
																are illegal are forbidden.<span style="mso-spacerun: yes">&nbsp;
                                                                </span>
                                                                        <o:p></o:p>
                                                                    </span></li>
                                                                    <li class="MsoNormal" style="background: white; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1"><span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">Misuse can lead to penalties up to and including loss of system access, employment termination, expulsion from classes or from the college,
																	and may also lead to a requirement to repay costs associated with any damages caused
																	to the College or other users. In addition, some activities
																may lead to risk of personal legal liability, both civil and criminal, under local, state and federal
																	laws and regulations. Use common
																sense: the same rules of courtesy, ethics, morality and law apply here as elsewhere.<o:p></o:p></span> </li>
                                                                    <li class="MsoNormal" style="background: white; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1"><span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">All persons accessing the College's electronic resources are covered by these guidelines,
																whether faculty, staff, students, trustees, volunteers, emeritus or retired persons,
																guests, or any other user.<o:p></o:p></span> </li>
                                                                    <li class="MsoNormal" style="background: white; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1"><span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">The College is not responsible for personal equipment,
																	software or data including without limitation personal laptops, personal computer
																	peripherals or data on removable media.<span style="mso-spacerun: yes"> &nbsp; </span>
                                                                        Users connect to College systems at their own risk.<o:p></o:p></span> </li>
                                                                    <li class="MsoNormal" style="background: white; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1"><span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">All electronic resources of the College are covered by these guidelines, including
																without limitation all networks, network and internet
																	bandwidth (wired or wireless), supporting backbones and links, stand-alone computers,
																	telephones,
																output devices including printers, shared computers, and connecting resources of
																any kind (ex. projectors, cameras), including any external networks.<o:p></o:p></span>
                                                                    </li>
                                                                    <li class="MsoNormal" style="background: white; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1"><span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">You should not assume that anything received, sent or stored on any of these systems
																is private. The College generally, and system administrators specifically, will
																respect the privacy of users. However, these systems are not provided or intended
																for sending or receiving private or confidential communications. If material is
																stored electronically rather than in paper files, it must be just as accessible
																to others who need access to those files as any paper file would be. In addition,
																system administrators have access to all mail and user access requests and will
																monitor them as necessary to assure efficient performance and appropriate use. If
																access discloses improper or illegal use, it may be reported and penalized. Legal
																process, including requests for information under the Freedom of Information Act,
																may also compel disclosure.<o:p></o:p></span> </li>
                                                                    <li class="MsoNormal" style="background: white; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1"><span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">Each user must respect the privacy of every other user. You may not attempt to access,
																copy, modify or otherwise view or use the passwords, data, or electronic resources
																of any other user, except as expressly authorized in writing by the Chief Information Officer (CIO) of the Office of Information Technology (OIT).<o:p></o:p></span> </li>
                                                                    <li class="MsoNormal" style="background: white; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1"><span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">You may not represent yourself as someone else, or send messages that appear to
																originate from someone else ("spoofing").<o:p></o:p></span>
                                                                    </li>
                                                                    <li class="MsoNormal" style="background: white; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1"><span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">You have free speech and academic freedom rights in electronic forms of communication
																as you do in other forms of communication. However, your responsibilities may be
																somewhat different because of the nature of the medium. Electronic messages may
																be accessible to unintended audiences. The College will not impose restraints or
																monitor content of communications except as required by applicable law and system
																administration requirements. Your communications are subject to such laws, including
																those regarding others' rights to privacy, licensing or copyright, prohibition of
																defamation, or prohibition of harassment or stalking, and the consequences of violations
																can be severe.<o:p></o:p></span> </li>
                                                                    <li class="MsoNormal" style="background: white; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1"><span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">Your access to resources of the College, including access to electronic resources,
																is a privilege and not a right.<span style="mso-spacerun: yes">&nbsp;
                                                                </span>Access to the College's electronic resources must be authorized.<span style="mso-spacerun: yes">&nbsp;
                                                                </span>Unauthorized access may be subject to penalties assessed by the College and
																	by outside legal authority.<o:p></o:p></span> </li>
                                                                    <li class="MsoNormal" style="background: white; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1"><span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">You must observe classroom and computer lab policies and procedures, and comply
																with instructions of support staff in the computer labs and OIT staff. In particular,
																you will vacate workstations or the facility and will surrender other resources
																(such as printers and software) promptly when asked to do so both at closing times
																and when necessary to permit access by others.<o:p></o:p></span>
                                                                    </li>
                                                                    <li class="MsoNormal" style="background: white; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1"><span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">You should assume that anything you access may be copyrighted. Absence of a � notice
																does not mean that the material is not copyrighted. For example,
																before you download a document, an image, or any other media to your web page, you
																should ask the author's permission.<o:p></o:p></span> </li>
                                                                    <li class="MsoNormal" style="background: white; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1"><span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">You have full responsibility for statements made via the electronic resources of
																the College, including statements on any <span style="color: black">personal </span>Web pages. Such statements do
																not represent the opinions of the College or any other member of the College community.
																Your <span style="color: black">personal</span> Web page should include the following disclaimer at the bottom of
																the first page: "This space is provided as a service by
																	<st1:place w:st="on"></st1:place>
                                                                        <st1:placename w:st="on"></st1:placename>
                                                                        Delta
																	<st1:placetype w:st="on"></st1:placetype>
                                                                        College . Views and content expressed
																do not necessarily reflect those of the College."<o:p></o:p></span>
                                                                    </li>
                                                                    <li class="MsoNormal" style="background: white; margin: 0in 0in 0pt; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1; mso-margin-bottom-alt: auto">
                                                                        <span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">The following list is provided as an illustration, but not an exhaustive list, of
																the kinds of uses that could subject you to penalties by the College or by outside
																authority:
																	<o:p></o:p>
                                                                        </span>
                                                                        <ul type="circle">
                                                                            <li class="MsoNormal" style="background: white; margin: 0in 0in 0pt; tab-stops: list 1.0in; mso-margin-top-alt: auto; mso-list: l0 level2 lfo1; mso-margin-bottom-alt: auto">
                                                                                <span style="font-size: 9.0pt">Harassment, such as repeated unwanted communication or communication that threatens;
																			<o:p></o:p>
                                                                                </span></li>
                                                                            <li class="MsoNormal" style="background: white; margin: 0in 0in 0pt; tab-stops: list 1.0in; mso-margin-top-alt: auto; mso-list: l0 level2 lfo1; mso-margin-bottom-alt: auto">
                                                                                <span style="font-size: 9.0pt">Violation of others' privacy;
																			<o:p></o:p>
                                                                                </span></li>
                                                                            <li class="MsoNormal" style="background: white; margin: 0in 0in 0pt; tab-stops: list 1.0in; mso-margin-top-alt: auto; mso-list: l0 level2 lfo1; mso-margin-bottom-alt: auto">
                                                                                <span style="font-size: 9.0pt">Destruction or damage to equipment, software or data of the College or others;
																			<o:p></o:p>
                                                                                </span></li>
                                                                            <li class="MsoNormal" style="background: white; margin: 0in 0in 0pt; tab-stops: list 1.0in; mso-margin-top-alt: auto; mso-list: l0 level2 lfo1; mso-margin-bottom-alt: auto">
                                                                                <span style="font-size: 9.0pt">Violation of computer system security;
																			<o:p></o:p>
                                                                                </span></li>
                                                                            <li class="MsoNormal" style="background: white; margin: 0in 0in 0pt; tab-stops: list 1.0in; mso-margin-top-alt: auto; mso-list: l0 level2 lfo1; mso-margin-bottom-alt: auto">
                                                                                <span style="font-size: 9.0pt">Use of computer accounts or access codes without permission, or permitting another
																		unauthorized person to use accounts or access codes;
																			<o:p></o:p>
                                                                                </span></li>
                                                                            <li class="MsoNormal" style="background: white; margin: 0in 0in 0pt; tab-stops: list 1.0in; mso-margin-top-alt: auto; mso-list: l0 level2 lfo1; mso-margin-bottom-alt: auto">
                                                                                <span style="mso-bidi-font-size: 9.0pt">Violation of copyright or software license agreements;
																			<o:p></o:p>
                                                                                </span></li>
                                                                            <li class="MsoNormal" style="background: white; margin: 0in 0in 0pt; tab-stops: list 1.0in; mso-margin-top-alt: auto; mso-list: l0 level2 lfo1; mso-margin-bottom-alt: auto">
                                                                                <span style="font-size: 9.0pt">Negligent or deliberate inappropriate use of the resource in ways that degrades
																		service for other users, including viruses, Trojan Horses, worms and the like;
																			<o:p></o:p>
                                                                                </span></li>
                                                                            <li class="MsoNormal" style="background: white; margin: 0in 0in 0pt; tab-stops: list 1.0in; mso-margin-top-alt: auto; mso-list: l0 level2 lfo1; mso-margin-bottom-alt: auto">
                                                                                <span style="font-size: 9.0pt">Academic dishonesty;
																			<o:p></o:p>
                                                                                </span></li>
                                                                            <li class="MsoNormal" style="background: white; margin: 0in 0in 0pt; tab-stops: list 1.0in; mso-margin-top-alt: auto; mso-list: l0 level2 lfo1; mso-margin-bottom-alt: auto">
                                                                                <span style="font-size: 9.0pt">Violation of College policy or local, state or federal law;
																			<o:p></o:p>
                                                                                </span></li>
                                                                            <li class="MsoNormal" style="background: white; margin: 0in 0in 0pt; tab-stops: list 1.0in; mso-margin-top-alt: auto; mso-list: l0 level2 lfo1; mso-margin-bottom-alt: auto">
                                                                                <span style="font-size: 9.0pt">Using computer resources for any purpose which is criminal, unethical, dishonest,
																		damaging to the reputation of the College, or likely to subject the College to liability;</span>
                                                                            </li>
                                                                            <li class="MsoNormal" style="background: white; margin: 0in 0in 0pt; tab-stops: list 1.0in; mso-margin-top-alt: auto; mso-list: l0 level2 lfo1; mso-margin-bottom-alt: auto">
                                                                                <span style="font-size: 9.0pt">Unauthorized access to College
																			bandwidth (wired or wireless);
                                                                                </span></li>
                                                                            <li class="MsoNormal" style="background: white; tab-stops: list 1.0in; mso-margin-top-alt: auto; mso-list: l0 level2 lfo1"><span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">"Spamming" or the non-commercial equivalent, defined as sending a large volume of
																		unsolicited e-mail which is irrelevant to most if not all recipients.</span> </li>
                                                                        </ul>
                                                                    </li>
                                                                    <li class="MsoNormal" style="background: white; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1"><span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">Consequences and process will depend on the violation. When required to protect
																others or system integrity, immediate termination, removal of pages or other materials, suspension of user privileges, or other actions may occur. Otherwise, the user will normally be
																notified of the alleged infraction and will have an opportunity to respond to a
																person or body separate from system administration, and will have an opportunity
																to appeal. The process used will depend on the nature of the alleged infraction,
																and could be heard under the Judicial Process, Senate Policy 2.065; Student Violation
																of College Rules and Regulations, Senate Policy 8.045; Disciplinary Action, Support
																Staff Policies and Procedures 1.12; the Grievance/Complaint
																	Procedures for Equal Opportunity/ Equity Concerns, or other appropriate college
																	policies, procedures, or guidelines, or could be referred to outside
																legal authorities where violations of local, state or federal law are involved.
																Penalties imposed may range from warnings to suspension of privileges for a temporary,
																definite, or indefinite period, to termination of employment or expulsion from classes
																or from the College, to civil suit or criminal prosecution and the penalties resulting
																from those actions.<o:p></o:p></span> </li>
                                                                    <li class="MsoNormal" style="background: white; margin: 0in 0in 0pt; tab-stops: list .5in; mso-margin-top-alt: auto; mso-list: l0 level1 lfo1; mso-margin-bottom-alt: auto">
                                                                        <st1:place w:st="on"></st1:place>
                                                                        <st1:placename w:st="on"></st1:placename>
                                                                        <span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">Delta</span><span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">
                                                                            <st1:placetype w:st="on"></st1:placetype>
                                                                            College</span> <span style="<%--font-family: Arial; --%> mso-bidi-font-size: 9.0pt">reserves the right to monitor, manage, and control the usage of these
																resources and to make changes in these guidelines without prior notice.
																		<o:p></o:p>
                                                                            </span></li>
                                                                </ol>
                                                            </div>
                                                            <p class="MsoNormal" style="margin: 0in 0in 0pt">
                                                                <span style="<%--font-family: Arial; --%> mso-bidi-font-size: 8.5pt">Last Revision
																<st1:date day="7" ls="trans" month="9" w:st="on" year="2006"></st1:date>
                                                                    9/7/2006 </span>
                                                            </p>
                                                            <p>
                                                                <hr width="100%">
                                                            </p>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                        <div class="body-container">
                                            <table>
                                                <tr>
                                                    <td>
                                                        <div class="welcomeContainer">
                                                            <h1 class="welcomeTitle">&nbsp;</h1>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="interestContainer">
                                                            <h1 class="interestTitle">&nbsp;</h1>
                                                        </div>
                                                    </td>
                                                    <td class="news">
                                                        <div class="newsContainer">
                                                            <h1 class="newsTitle">&nbsp;</h1>
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </td>
                                    <!-- END MAIN Column Content Area -->
                                </tr>
                            </table>
                            <!-- End Header Area -->
                        </td>
                    </tr>
                </table>
            </div>
        </form>
    </div>
    <footer class="site-footer">
        <p>Delta College | 1961 Delta Road, University Center, MI 48710 | 989-686-9093</p>
    </footer>
</body>
</html>