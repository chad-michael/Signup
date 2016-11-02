<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Policy.aspx.vb" Inherits="Policy" %>

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

    <%--HTML5 shiv script in order to allow styling of HTML5 elements in older IE browsers--%>
    <!--[if lt IE 9]>
        <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <title>Delta College Sign Up</title>

    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/bootstrap-theme.css" rel="stylesheet" />
    <link href="Content/delta-branding.css" rel="stylesheet" />

    <link rel="shortcut icon" type="img/x-icon" href="favicon.ico" />
</head>
<body>

    <div class="body-container">
        <header class="logo">

            <a href="https://www.delta.edu">
                <img src="images/DeltaLogo.png" class="header-logo" alt="Delta College logo" />
            </a>
        </header>

        <form id="form1" runat="server">
            <div>
                <div class="table-responsive">
                    <table class="PageBoundingBox table">
                        <tr>
                            <td>
                                <table class="ContentBoundingBox">
                                    <tr>

                                        <td class="MainContent">

                                            <table>
                                                <tr>
                                                    <td class="homebranding">
                                                        <p>
                                                            <strong>Delta College's Acceptable Use Guidelines</strong>
                                                        </p>
                                                        <div class="Eraug">
                                                            <ol style="list-style-type: lower-roman">
                                                                <li>By accessing College electronic resources you assume personal responsibility for their appropriate use and agree to comply with all applicable College policies and procedures as well as external networks' policies and procedures, local, state and federal laws and regulations.</li>
                                                                <li>You are solely responsible for your access and use, and may not transfer or share your passwords or account.</li>
                                                                <li>Delta College electronic resources are provided to support the college mission. Uses such as private business use or use for personal gain, non-profit activities, advertising and fundraising not related to the college are prohibited. Excessive personal use for activities such as game playing, financial transactions or communicating with family and friends is also prohibited.</li>
                                                                <li>Uses that threaten the integrity of any system or its contents, the function of resources accessed through the system, the privacy or safety of anyone, or that are illegal are forbidden.</li>
                                                                <li>Misuse can lead to penalties up to and including loss of system access, employment termination, expulsion from classes or from the college, and may also lead to a requirement to repay costs associated with any damages caused to the College or other users. In addition, some activities may lead to risk of personal legal liability, both civil and criminal, under local, state and federal laws and regulations. Use common sense: the same rules of courtesy, ethics, morality and law apply here as elsewhere. </li>
                                                                <li>All persons accessing the College's electronic resources are covered by these guidelines, whether faculty, staff, students, trustees, volunteers, emeritus or retired persons, guests, or any other user.<</li>
                                                                <li>The College is not responsible for personal equipment, software or data including without limitation personal laptops, personal computer peripherals or data on removable media. Users connect to College systems at their own risk.</li>
                                                                <li>All electronic resources of the College are covered by these guidelines, including without limitation all networks, network and internet bandwidth (wired or wireless), supporting backbones and links, stand-alone computers, telephones, output devices including printers, shared computers, and connecting resources of any kind (ex. projectors, cameras), including any external networks.</li>
                                                                <li>You should not assume that anything received, sent or stored on any of these systems is private. The College generally, and system administrators specifically, will
                                                                    respect the privacy of users. However, these systems are not provided or intended for sending or receiving private or confidential communications. If material is
                                                                    stored electronically rather than in paper files, it must be just as accessible to others who need access to those files as any paper file would be. In addition,
                                                                    system administrators have access to all mail and user access requests and will monitor them as necessary to assure efficient performance and appropriate use. If
                                                                    access discloses improper or illegal use, it may be reported and penalized. Legal process, including requests for information under the Freedom of Information Act,
                                                                    may also compel disclosure.
                                                                </li>
                                                                <li>Each user must respect the privacy of every other user. You may not attempt to access, copy, modify or otherwise view or use the passwords, data, or electronic resources of any other user, except as expressly authorized in writing by the Chief Information Officer (CIO) of the Office of Information Technology (OIT).
                                                                </li>
                                                                <li>You may not represent yourself as someone else, or send messages that appear to originate from someone else ("spoofing").
                                                                </li>
                                                                <li>You have free speech and academic freedom rights in electronic forms of communication as you do in other forms of communication. However, your responsibilities may be
                                                                        somewhat different because of the nature of the medium. Electronic messages may
                                                                        be accessible to unintended audiences. The College will not impose restraints or
                                                                        monitor content of communications except as required by applicable law and system
                                                                        administration requirements. Your communications are subject to such laws, including
                                                                        those regarding others' rights to privacy, licensing or copyright, prohibition of
                                                                        defamation, or prohibition of harassment or stalking, and the consequences of violations
                                                                        can be severe.
                                                                </li>
                                                                <li>Your access to resources of the College, including access to electronic resources,
                                                                        is a privilege and not a right. Access to the College's electronic resources must be authorized. Unauthorized access may be subject to penalties assessed by the College and
                                                                        by outside legal authority.
                                                                </li>
                                                                <li>You must observe classroom and computer lab policies and procedures, and comply with instructions of support staff in the computer labs and OIT staff. In particular, you will vacate workstations or the facility and will surrender other resources
                                                                            (such as printers and software) promptly when asked to do so both at closing times and when necessary to permit access by others.
                                                                </li>
                                                                <li>You should assume that anything you access may be copyrighted. Absence of a © notice
                                                                            does not mean that the material is not copyrighted. For example,
                                                                            before you download a document, an image, or any other media to your web page, you
                                                                            should ask the author's permission.
                                                                </li>
                                                                <li>You have full responsibility for statements made via the electronic resources of
                                                                        the College, including statements on any
                                                                            <span style="color: black">personal Web pages.</span>
                                                                    Such statements do
                                                                        not represent the opinions of the College or any other member of the College community.
                                                                        Your
                                                                            <span style="color: black">personal Web page</span>
                                                                    should include the following disclaimer at the bottom of
                                                                        the first page: "This space is provided as a service by Delta College . Views and content expressed
                                                                        do not necessarily reflect those of the College."
                                                                </li>
                                                                <li>The following list is provided as an illustration, but not an exhaustive list, of the kinds of uses that could subject you to penalties by the College or by outside authority:
                                                                        <ul
                                                                            style="list-style-type: circle; margin-left: 4.5em;">
                                                                            <li>Harassment, such as repeated unwanted communication or communication that threatens;</li>
                                                                            <li>Violation of others' privacy;</li>
                                                                            <li>Destruction or damage to equipment, software or data of the College or others;</li>
                                                                            <li>Violation of computer system security;</li>
                                                                            <li>Use of computer accounts or access codes without permission, or permitting another unauthorized person to use accounts or access codes;</li>
                                                                            <li>Violation of copyright or software license agreements;</li>
                                                                            <li>Negligent or deliberate inappropriate use of the resource in ways that degrades service for other users, including viruses, Trojan Horses, worms and the like;</li>
                                                                            <li>Academic dishonesty;</li>
                                                                            <li>Violation of College policy or local, state or federal law;</li>
                                                                            <li>Using computer resources for any purpose which is criminal, unethical, dishonest, damaging to the reputation of the College, or likely to subject the College to liability;</li>
                                                                            <li>Unauthorized access to College bandwidth (wired or wireless);</li>
                                                                            <li>"Spamming" or the non-commercial equivalent, defined as sending a large volume of unsolicited e-mail which is irrelevant to most if not all recipients.
                                                                            </li>
                                                                        </ul>
                                                                </li>
                                                                <li>Consequences and process will depend on the violation. When required to protect others or system integrity, immediate termination, removal of pages or other materials, suspension of user privileges, or other actions may occur. Otherwise, the user will normally be
                                                                        notified of the alleged infraction and will have an opportunity to respond to aperson or body separate from system administration, and will have an opportunityto appeal. The process used will depend on the nature of the alleged infraction,
                                                                        and could be heard under the Judicial Process, Senate Policy 2.065; Student Violationof College Rules and Regulations, Senate Policy 8.045; Disciplinary Action, Support                                                                     Staff Policies and Procedures 1.12; the Grievance/ComplaintProcedures for Equal Opportunity/ Equity Concerns, or other appropriate collegepolicies, procedures, or guidelines, or could be referred to outside
                                                                        legal authorities where violations of local, state or federal law are involved.Penalties imposed may range from warnings to suspension of privileges for a temporary,definite, or indefinite period, to termination of employment or expulsion from classes
                                                                        or from the College, to civil suit or criminal prosecution and the penalties resultingfrom those actions.
                                                                </li>
                                                                <li>Delta College reserves the right to monitor, manage, and control the usage of these resources and to make changes in these guidelines without prior notice.</li>
                                                            </ol>
                                                        </div>
                                                        <p>
                                                            <span style="font-family: Arial; font-size: 8.5pt">Last Revision 9/7/2006</span>
                                                        </p>
                                                        <hr />
                                                        <div align="left">
                                                            <b><a href="disagree.aspx">I DISAGREE and will NOT follow your Code of Responsible Computer
                                                                    Usage</a><br />
                                                                <br />
                                                                <a href="default.aspx">I AGREE and will follow your Code of Responsible Computer Usage</a></b>
                                                            <br />
                                                            <br />
                                                            <br />
                                                            <br />
                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                        <!-- END MAIN Column Content Area -->
                                    </tr>
                                </table>
                                <!-- End Header Area -->
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </form>
    </div>

    <footer class="site-footer">
        <p>Delta College | 1961 Delta Road, University Center, MI 48710 | 989-686-9093</p>
    </footer>
</body>
</html>