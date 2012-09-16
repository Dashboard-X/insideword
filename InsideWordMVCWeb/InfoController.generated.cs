// <auto-generated />
// This file was generated by a T4 template.
// Don't change it directly as your change would get overwritten.  Instead, make changes
// to the .tt file (i.e. the T4 template) and save it to regenerate this file.

// Make sure the compiler doesn't complain about missing Xml comments
#pragma warning disable 1591
#region T4MVC

using System;
using System.Diagnostics;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Web;
using System.Web.Hosting;
using System.Web.Mvc;
using System.Web.Mvc.Ajax;
using System.Web.Mvc.Html;
using System.Web.Routing;
using T4MVC;
namespace InsideWordMVCWeb.Controllers {
    public partial class InfoController {
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public InfoController() { }

        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        protected InfoController(Dummy d) { }

        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        protected RedirectToRouteResult RedirectToAction(ActionResult result) {
            var callInfo = result.GetT4MVCResult();
            return RedirectToRoute(callInfo.RouteValueDictionary);
        }


        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public InfoController Actions { get { return MVC.Info; } }
        [GeneratedCode("T4MVC", "2.0")]
        public readonly string Area = "";
        [GeneratedCode("T4MVC", "2.0")]
        public readonly string Name = "Info";

        static readonly ActionNamesClass s_actions = new ActionNamesClass();
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public ActionNamesClass ActionNames { get { return s_actions; } }
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public class ActionNamesClass {
            public readonly string About = "About";
            public readonly string Faq = "Faq";
            public readonly string ContactUs = "ContactUs";
            public readonly string Guidelines = "Guidelines";
            public readonly string Privacy = "Privacy";
            public readonly string Terms = "Terms";
            public readonly string PublishByEmail = "PublishByEmail";
            public readonly string Tutorial = "Tutorial";
        }


        static readonly ViewNames s_views = new ViewNames();
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public ViewNames Views { get { return s_views; } }
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public class ViewNames {
            public readonly string About = "~/Views/Info/About.aspx";
            public readonly string ContactUs = "~/Views/Info/ContactUs.aspx";
            public readonly string Faq = "~/Views/Info/Faq.aspx";
            public readonly string Guidelines = "~/Views/Info/Guidelines.aspx";
            public readonly string Privacy = "~/Views/Info/Privacy.aspx";
            public readonly string PublishByEmail = "~/Views/Info/PublishByEmail.aspx";
            public readonly string Terms = "~/Views/Info/Terms.aspx";
            public readonly string Tutorial = "~/Views/Info/Tutorial.aspx";
        }
    }

    [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
    public class T4MVC_InfoController: InsideWordMVCWeb.Controllers.InfoController {
        public T4MVC_InfoController() : base(Dummy.Instance) { }

        public override System.Web.Mvc.ActionResult About() {
            var callInfo = new T4MVC_ActionResult(Area, Name, ActionNames.About);
            return callInfo;
        }

        public override System.Web.Mvc.ActionResult Faq() {
            var callInfo = new T4MVC_ActionResult(Area, Name, ActionNames.Faq);
            return callInfo;
        }

        public override System.Web.Mvc.ActionResult ContactUs() {
            var callInfo = new T4MVC_ActionResult(Area, Name, ActionNames.ContactUs);
            return callInfo;
        }

        public override System.Web.Mvc.ActionResult Guidelines() {
            var callInfo = new T4MVC_ActionResult(Area, Name, ActionNames.Guidelines);
            return callInfo;
        }

        public override System.Web.Mvc.ActionResult Privacy() {
            var callInfo = new T4MVC_ActionResult(Area, Name, ActionNames.Privacy);
            return callInfo;
        }

        public override System.Web.Mvc.ActionResult Terms() {
            var callInfo = new T4MVC_ActionResult(Area, Name, ActionNames.Terms);
            return callInfo;
        }

        public override System.Web.Mvc.ActionResult PublishByEmail() {
            var callInfo = new T4MVC_ActionResult(Area, Name, ActionNames.PublishByEmail);
            return callInfo;
        }

        public override System.Web.Mvc.ActionResult Tutorial() {
            var callInfo = new T4MVC_ActionResult(Area, Name, ActionNames.Tutorial);
            return callInfo;
        }

    }
}

#endregion T4MVC
#pragma warning restore 1591
