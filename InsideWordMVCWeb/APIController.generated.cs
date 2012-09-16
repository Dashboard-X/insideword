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
    public partial class APIController {
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public APIController() { }

        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        protected APIController(Dummy d) { }

        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        protected RedirectToRouteResult RedirectToAction(ActionResult result) {
            var callInfo = result.GetT4MVCResult();
            return RedirectToRoute(callInfo.RouteValueDictionary);
        }

        [NonAction]
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public System.Web.Mvc.JsonResult LogInfo() {
            return new T4MVC_JsonResult(Area, Name, ActionNames.LogInfo);
        }
        [NonAction]
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public System.Web.Mvc.JsonResult Incr() {
            return new T4MVC_JsonResult(Area, Name, ActionNames.Incr);
        }
        [NonAction]
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public System.Web.Mvc.JsonResult DomainIdentificationRequest() {
            return new T4MVC_JsonResult(Area, Name, ActionNames.DomainIdentificationRequest);
        }
        [NonAction]
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public System.Web.Mvc.JsonResult DelayedVisitRequest() {
            return new T4MVC_JsonResult(Area, Name, ActionNames.DelayedVisitRequest);
        }
        [NonAction]
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public System.Web.Mvc.JsonResult DomainIdentification() {
            return new T4MVC_JsonResult(Area, Name, ActionNames.DomainIdentification);
        }
        [NonAction]
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public System.Web.Mvc.JsonResult Login() {
            return new T4MVC_JsonResult(Area, Name, ActionNames.Login);
        }
        [NonAction]
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public System.Web.Mvc.JsonResult PublishArticle() {
            return new T4MVC_JsonResult(Area, Name, ActionNames.PublishArticle);
        }
        [NonAction]
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public System.Web.Mvc.JsonResult ChangeArticleState() {
            return new T4MVC_JsonResult(Area, Name, ActionNames.ChangeArticleState);
        }
        [NonAction]
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public System.Web.Mvc.JsonResult ArticleRank() {
            return new T4MVC_JsonResult(Area, Name, ActionNames.ArticleRank);
        }
        [NonAction]
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public System.Web.Mvc.JsonResult Category() {
            return new T4MVC_JsonResult(Area, Name, ActionNames.Category);
        }
        [NonAction]
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public System.Web.Mvc.JsonResult AccountSync() {
            return new T4MVC_JsonResult(Area, Name, ActionNames.AccountSync);
        }

        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public APIController Actions { get { return MVC.API; } }
        [GeneratedCode("T4MVC", "2.0")]
        public readonly string Area = "";
        [GeneratedCode("T4MVC", "2.0")]
        public readonly string Name = "API";

        static readonly ActionNamesClass s_actions = new ActionNamesClass();
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public ActionNamesClass ActionNames { get { return s_actions; } }
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public class ActionNamesClass {
            public readonly string LogInfo = "LogInfo";
            public readonly string Ping = "Ping";
            public readonly string Incr = "Incr";
            public readonly string DomainIdentificationRequest = "DomainIdentificationRequest";
            public readonly string DelayedVisitRequest = "DelayedVisitRequest";
            public readonly string DomainIdentification = "DomainIdentification";
            public readonly string Login = "Login";
            public readonly string PublishArticle = "PublishArticle";
            public readonly string ChangeArticleState = "ChangeArticleState";
            public readonly string ArticleRank = "ArticleRank";
            public readonly string Category = "Category";
            public readonly string AccountSync = "AccountSync";
            public readonly string ProfileLink = "ProfileLink";
            public readonly string DefaultCategoryId = "DefaultCategoryId";
            public readonly string IssuedKeyRequest = "IssuedKeyRequest";
        }


        static readonly ViewNames s_views = new ViewNames();
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public ViewNames Views { get { return s_views; } }
        [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
        public class ViewNames {
        }
    }

    [GeneratedCode("T4MVC", "2.0"), DebuggerNonUserCode]
    public class T4MVC_APIController: InsideWordMVCWeb.Controllers.APIController {
        public T4MVC_APIController() : base(Dummy.Instance) { }

        public override System.Web.Mvc.JsonResult LogInfo(string text) {
            var callInfo = new T4MVC_JsonResult(Area, Name, ActionNames.LogInfo);
            callInfo.RouteValueDictionary.Add("text", text);
            return callInfo;
        }

        public override System.Web.Mvc.JsonResult Ping() {
            var callInfo = new T4MVC_JsonResult(Area, Name, ActionNames.Ping);
            return callInfo;
        }

        public override System.Web.Mvc.JsonResult Incr(long? start) {
            var callInfo = new T4MVC_JsonResult(Area, Name, ActionNames.Incr);
            callInfo.RouteValueDictionary.Add("start", start);
            return callInfo;
        }

        public override System.Web.Mvc.JsonResult DomainIdentificationRequest(string domainAddress) {
            var callInfo = new T4MVC_JsonResult(Area, Name, ActionNames.DomainIdentificationRequest);
            callInfo.RouteValueDictionary.Add("domainAddress", domainAddress);
            return callInfo;
        }

        public override System.Web.Mvc.JsonResult DelayedVisitRequest(string pageAddress, int secDelay) {
            var callInfo = new T4MVC_JsonResult(Area, Name, ActionNames.DelayedVisitRequest);
            callInfo.RouteValueDictionary.Add("pageAddress", pageAddress);
            callInfo.RouteValueDictionary.Add("secDelay", secDelay);
            return callInfo;
        }

        public override System.Web.Mvc.JsonResult DomainIdentification(string domainAddress, string subFolder) {
            var callInfo = new T4MVC_JsonResult(Area, Name, ActionNames.DomainIdentification);
            callInfo.RouteValueDictionary.Add("domainAddress", domainAddress);
            callInfo.RouteValueDictionary.Add("subFolder", subFolder);
            return callInfo;
        }

        public override System.Web.Mvc.JsonResult Login(string issuedKey, string issuedKey2) {
            var callInfo = new T4MVC_JsonResult(Area, Name, ActionNames.Login);
            callInfo.RouteValueDictionary.Add("issuedKey", issuedKey);
            callInfo.RouteValueDictionary.Add("issuedKey2", issuedKey2);
            return callInfo;
        }

        public override System.Web.Mvc.JsonResult PublishArticle(InsideWordMVCWeb.ViewModels.API.APIArticleVM model) {
            var callInfo = new T4MVC_JsonResult(Area, Name, ActionNames.PublishArticle);
            callInfo.RouteValueDictionary.Add("model", model);
            return callInfo;
        }

        public override System.Web.Mvc.JsonResult ChangeArticleState(long articleId, InsideWordProvider.ProviderArticle.ArticleState state) {
            var callInfo = new T4MVC_JsonResult(Area, Name, ActionNames.ChangeArticleState);
            callInfo.RouteValueDictionary.Add("articleId", articleId);
            callInfo.RouteValueDictionary.Add("state", state);
            return callInfo;
        }

        public override System.Web.Mvc.JsonResult ArticleRank(long articleId) {
            var callInfo = new T4MVC_JsonResult(Area, Name, ActionNames.ArticleRank);
            callInfo.RouteValueDictionary.Add("articleId", articleId);
            return callInfo;
        }

        public override System.Web.Mvc.JsonResult Category(long? categoryId) {
            var callInfo = new T4MVC_JsonResult(Area, Name, ActionNames.Category);
            callInfo.RouteValueDictionary.Add("categoryId", categoryId);
            return callInfo;
        }

        public override System.Web.Mvc.JsonResult AccountSync(InsideWordMVCWeb.ViewModels.API.MemberDataVM memberData) {
            var callInfo = new T4MVC_JsonResult(Area, Name, ActionNames.AccountSync);
            callInfo.RouteValueDictionary.Add("memberData", memberData);
            return callInfo;
        }

        public override System.Web.Mvc.JsonResult ProfileLink() {
            var callInfo = new T4MVC_JsonResult(Area, Name, ActionNames.ProfileLink);
            return callInfo;
        }

        public override System.Web.Mvc.JsonResult DefaultCategoryId() {
            var callInfo = new T4MVC_JsonResult(Area, Name, ActionNames.DefaultCategoryId);
            return callInfo;
        }

        public override System.Web.Mvc.JsonResult IssuedKeyRequest() {
            var callInfo = new T4MVC_JsonResult(Area, Name, ActionNames.IssuedKeyRequest);
            return callInfo;
        }

    }
}

#endregion T4MVC
#pragma warning restore 1591