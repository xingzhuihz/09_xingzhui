//创建异步对象
let fTitle;
let allTitle;

if (window.XMLHttpRequest) {
    fTitle = new XMLHttpRequest();
    allTitle = new XMLHttpRequest();

} else {
    try {
        fTitle = new ActiveXObject("Msxm12.XMLHTTP");
        allTitle = new ActiveXObject("Msxm12.XMLHTTP");
        content = new ActiveXObject("Msxm12.XMLHTTP")

    } catch (e) {
        fTitle = new ActiveXObject("Microsoft.XMLHTTP");
        allTitle = new ActiveXObject("Microsoft.XMLHTTP");

    }
}

//首页5个标题
fTitle.open("GET", "<%=path %>/index?method=fiveTitle", true);

//全部标题
allTitle.open("GET", "<%=path %>/index?method=fourContent", true);


fTitle.onreadystatechange = function () {
    if (4 == fTitle.readyState) {
        if (200 == fTitle.status) {
            let result = fTitle.responseText;
            // typeof显示数据类型
            //类型转换 object
            result = JSON.parse(result);
            // alert(typeof result);
            displayFiveTitle(result);

        }
    }

};
fTitle.send();

function displayFiveTitle(json) {
    let ul = document.getElementById("fiveTitle");
    ul.innerHTML = "";
    ul.innerHTML += "<li><a href=\"../index_home.jsp\" class=\"current\">首页</a></li>";
    ul.innerHTML += "<li><a href=\"../subpage.jsp\" class=\"current\">热点文章</a></li>";
    let len = json.length;
    for (let i = 0; i < len; i++) {
        let obj = json[i];
        let id = obj.id;
        let title = obj.title;
        let a = obj.a;
        ul.innerHTML += " <li><a href=\"<%=path %>" + a + "\">" + title + "</a></li>";
    }
    //尾部
    let div = document.getElementById("templatemo_footer");
    div.innerHTML = "";
    div.innerHTML += "<a href=\"../index_home.jsp\">首页</a> |";
    for (let i = 0; i < len; i++) {
        let obj = json[i];
        let id = obj.id;
        let title = obj.title;
        div.innerHTML += " <a href=\"#\">" + title + "</a> |";
    }
    div.innerHTML += "<a href=\"#\">联系我们</a><br />";
    div.innerHTML += "Copyright © 2024 <a href=\"#\"><strong>乡土文化</strong></a> | from <a href=\"#\" target=\"_parent\" title=\"网站模板\">星骓</a>";


}

//显示全部标题
allTitle.onreadystatechange = function () {
    if (4 == allTitle.readyState) {
        if (200 == allTitle.status) {
            let result = allTitle.responseText;
            // typeof显示数据类型
            //类型转换 object
            result = JSON.parse(result);
            // alert(resul);
            displayAllTitle(result);

        }
    }

};
allTitle.send();

function displayAllTitle(json) {
    let ul1 = document.getElementById("content_left_title1");
    ul1.innerHTML = "";

    let len = json.length;

    for (let i = 0; i < 9; i++) {
        let obj = json[i];
        let id = obj.id;
        let h1 = obj.h1;
        let a = obj.a;

        ul1.innerHTML += " <li><a href=\"<%=path%>" + a + "\">" + h1 + "</a></li>";


    }


    let ul2 = document.getElementById("content_left_title2");
    ul2.innerHTML = "";


    for (let i = 9; i < len; i++) {
        let obj = json[i];
        let id = obj.id;
        let h1 = obj.h1;
        let a = obj.a;

        ul2.innerHTML += " <li><a href=\"<%=path%>" + a + "\">" + h1 + "</a></li>";


    }


}

