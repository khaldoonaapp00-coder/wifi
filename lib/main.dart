<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="theme-color" content="#07111f">
<title>Shield WiFi Iraq</title>

<style>
:root {
  --bg:#07111f;
  --panel:#101e30;
  --line:#263c53;
  --text:#f0f6ff;
  --muted:#9db0c7;
  --cyan:#37d9e9;
  --green:#3ddc97;
  --red:#ff6577;
  --yellow:#ffd166;
}
* {box-sizing:border-box}
body {
  margin:0;
  background:linear-gradient(160deg,#0b1b2d,var(--bg) 55%);
  color:var(--text);
  font-family:system-ui,-apple-system,"Segoe UI",sans-serif;
  min-height:100vh;
}
header {
  padding:24px 16px 12px;
  text-align:center;
}
.logo {
  width:70px;height:70px;
  border:1px solid var(--cyan);
  border-radius:22px;
  display:grid;place-items:center;
  margin:auto auto 12px;
  font-size:35px;
  background:#102b40;
}
h1 {margin:8px 0;font-size:25px}
header p,.muted {color:var(--muted);font-size:14px}
main {max-width:700px;margin:auto;padding:12px}
.card {
  background:var(--panel);
  border:1px solid var(--line);
  border-radius:17px;
  padding:17px;
  margin-bottom:14px;
}
h2 {font-size:18px;margin:0 0 15px}
label {display:block;margin:13px 0 7px;font-size:14px}
input,select {
  width:100%;
  padding:13px;
  border-radius:10px;
  border:1px solid var(--line);
  background:#081626;
  color:var(--text);
  font-size:15px;
}
button {
  border:0;
  border-radius:11px;
  padding:13px 16px;
  background:var(--cyan);
  color:#06121c;
  font-size:15px;
  font-weight:750;
  cursor:pointer;
}
button:focus,input:focus,select:focus {
  outline:2px solid var(--cyan);
  outline-offset:2px;
}
.primary {width:100%;margin-top:17px}
.secondary {
  background:#20364d;color:var(--text);
  border:1px solid var(--line);
}
.actions {display:flex;gap:9px;flex-wrap:wrap}
.actions button {flex:1}
.check {
  display:flex;align-items:flex-start;gap:10px;
  padding:12px 0;border-bottom:1px solid var(--line);
}
.check:last-child {border:0}
.check input {width:19px;height:19px;flex-shrink:0;margin-top:3px}
.check label {margin:0;line-height:1.6}
.status {
  border-radius:12px;padding:14px;
  background:#0a1929;margin:10px 0;
}
.score {font-size:40px;font-weight:800;color:var(--cyan)}
.bar {
  height:9px;background:#26394e;border-radius:20px;
  overflow:hidden;margin:10px 0;
}
#barFill {height:100%;width:0%;background:var(--cyan);transition:width .3s}
.hidden {display:none}
.good {color:var(--green)}
.warn {color:var(--yellow)}
.bad {color:var(--red)}
small {color:var(--muted);line-height:1.7}
footer {text-align:center;padding:20px;color:var(--muted);font-size:12px}
ul {padding-right:22px;line-height:1.9}
</style>
</head>

<body>
<header>
  <div class="logo" aria-hidden="true">🛡️</div>
  <h1>Shield WiFi Iraq</h1>
  <p>مساعد فحص أمان شبكة الواي فاي الخاصة بك</p>
</header>

<main>
  <section class="card">
    <h2>📡 إعدادات الشبكة</h2>

    <label for="encryption">نوع التشفير في الراوتر</label>
    <select id="encryption">
      <option value="">ما أعرف</option>
      <option value="wpa3">WPA3</option>
      <option value="wpa2">WPA2-AES</option>
      <option value="mixed">WPA2/WPA3</option>
      <option value="old">WEP أو WPA القديم</option>
      <option value="none">بدون كلمة مرور</option>
    </select>

    <label for="wps">هل ميزة WPS مفعّلة؟</label>
    <select id="wps">
      <option value="">ما أعرف</option>
      <option value="off">لا، متوقفة</option>
      <option value="on">نعم، مفعّلة</option>
    </select>

    <label for="admin">كلمة مرور إدارة الراوتر</label>
    <select id="admin">
      <option value="">ما أعرف</option>
      <option value="unique">غيّرتها إلى كلمة فريدة</option>
      <option value="default">ما زالت الافتراضية</option>
    </select>

    <label for="firmware">تحديث نظام الراوتر</label>
    <select id="firmware">
      <option value="">ما أعرف</option>
      <option value="updated">محدّث</option>
      <option value="old">يحتاج تحديث</option>
    </select>

    <label for="remote">الإدارة عن بُعد من الإنترنت</label>
    <select id="remote">
      <option value="">ما أعرف</option>
      <option value="off">متوقفة</option>
      <option value="on">مفعّلة</option>
    </select>

    <label for="password">كلمة مرور الواي فاي (اختياري)</label>
    <input id="password" type="password"
      placeholder="تُفحص على جهازك فقط"
      autocomplete="off" maxlength="256">
    <div class="check">
      <input type="checkbox" id="showPassword">
      <label for="showPassword">إظهار كلمة المرور أثناء الكتابة</label>
    </div>
    <small>لا تكتب كلمة مرور تستخدمها بحساباتك الأخرى. لا يُرسل هذا الموقع كلمة المرور لأي خادم.</small>

    <button class="primary" id="scanBtn">🔍 حلّل إعداداتي</button>
  </section>

  <section class="card">
    <h2>📋 قائمة التحقق الأمنية</h2>
    <p class="muted">علّم العناصر التي تأكدت منها داخل إعدادات الراوتر.</p>
    <div id="checklist">
      <div class="check">
        <input type="checkbox" id="c1">
        <label for="c1">كلمة مرور الواي فاي طويلة وفريدة.</label>
      </div>
      <div class="check">
        <input type="checkbox" id="c2">
        <label for="c2">اسم المستخدم وكلمة مرور إدارة الراوتر ليستا افتراضيتين.</label>
      </div>
      <div class="check">
        <input type="checkbox" id="c3">
        <label for="c3">ميزة WPS متوقفة إذا لم أكن بحاجة إليها.</label>
      </div>
      <div class="check">
        <input type="checkbox" id="c4">
        <label for="c4">نظام الراوتر محدّث إلى إصدار مدعوم.</label>
      </div>
      <div class="check">
        <input type="checkbox" id="c5">
        <label for="c5">الإدارة عن بُعد متوقفة إذا لم أحتج إليها.</label>
      </div>
      <div class="check">
        <input type="checkbox" id="c6">
        <label for="c6">راجعت الأجهزة المتصلة من تطبيق الراوتر أو صفحة الإدارة.</label>
      </div>
    </div>
  </section>

  <section class="card hidden" id="results" aria-live="polite">
    <h2>📊 نتيجة التقييم</h2>
    <div class="status">
      <div class="score"><span id="score">0</span>/100</div>
      <div class="bar"><div id="barFill"></div></div>
      <strong id="grade">لم يتم التقييم</strong>
      <p class="muted" id="summary"></p>
    </div>
    <h2>التوصيات</h2>
    <ul id="recommendations"></ul>
    <div class="actions">
      <button class="secondary" id="downloadBtn">تنزيل التقرير TXT</button>
      <button class="secondary" id="resetBtn">إعادة الفحص</button>
    </div>
    <p><small>هذه نتيجة تقييم إرشادي مبنية على إجاباتك، وليست فحصاً تقنياً مباشراً للراوتر.</small></p>
  </section>

  <section class="card">
    <h2>ℹ️ حدود الفحص</h2>
    <ul>
      <li>لا يكتشف هذا الموقع الأجهزة المتصلة تلقائياً.</li>
      <li>لا يفحص منافذ الشبكة أو يخترق الراوتر.</li>
      <li>قوة كلمة المرور تقدير محلي تقريبي وليست ضماناً ضد الاختراق.</li>
      <li>لمعرفة الأجهزة المتصلة، استخدم تطبيق الراوتر الرسمي أو صفحة إدارته.</li>
    </ul>
  </section>
</main>

<footer>Shield WiFi Iraq · أداة توعوية لأمان الشبكات</footer>

<script>
"use strict";

(() => {
  const $ = id => document.getElementById(id);

  let lastReport = "";

  function safeText(value) {
    return String(value ?? "").trim();
  }

  function passwordAssessment(password) {
    if (!password) {
      return {
        score: 0,
        message: "لم تدخل كلمة مرور للفحص.",
        tips: ["يمكنك ترك خانة كلمة المرور فارغة."]
      };
    }

    let points = 0;
    const tips = [];

    if (password.length >= 16) points += 3;
    else if (password.length >= 12) points += 2;
    else if (password.length >= 8) points += 1;
    else tips.push("استخدم عبارة مرور طويلة، ويفضل 16 محرفاً أو أكثر.");

    if (/[a-z]/.test(password)) points++;
    if (/[A-Z]/.test(password)) points++;
    if (/[0-9]/.test(password)) points++;
    if (/[^a-zA-Z0-9]/.test(password)) points++;

    if (/^(.)\1+$/.test(password) || /123456|password|qwerty|111111/i.test(password)) {
      points = Math.min(points, 1);
      tips.push("تجنب التسلسلات المتوقعة والتكرار والكلمات الشائعة.");
    }

    if (password.length < 12) {
      tips.push("زيادة الطول عادةً أهم من الاعتماد على الرموز وحدها.");
    }

    if (password.length >= 16 && points >= 5) {
      return {
        score: 100,
        message: "تبدو جيدة وفق المؤشرات البسيطة.",
        tips: tips.length ? tips : ["لا تعِد استخدام كلمة المرور في حسابات أخرى."]
      };
    }

    return {
      score: Math.min(95, Math.round(points / 7 * 100)),
      message: points >= 5 ? "جيدة مبدئياً، لكن هذا ليس اختباراً كاملاً." : "تحتاج إلى تحسين محتمل.",
      tips: tips.length ? tips : ["استخدم كلمة فريدة وطويلة لا يمكن تخمينها بسهولة."]
    };
  }

  function assess() {
    const recommendations = [];
    let score = 100;

    const encryption = $("encryption").value;
    const wps = $("wps").value;
    const admin = $("admin").value;
    const firmware = $("firmware").value;
    const remote = $("remote").value;
    const checks = ["c1","c2","c3","c4","c5","c6"];

    if (encryption === "wpa3") {
      recommendations.push("التشفير مضبوط على WPA3 حسب اختيارك.");
    } else if (encryption === "wpa2" || encryption === "mixed") {
      recommendations.push("استخدم WPA3 إن كان مدعوماً، أو WPA2-AES. تجنب TKIP.");
      score -= 5;
    } else if (encryption === "old") {
      score -= 35;
      recommendations.push("خطر مرتفع: انتقل من WEP أو WPA القديم إلى WPA2-AES أو WPA3.");
    } else if (encryption === "none") {
      score -= 50;
      recommendations.push("خطر مرتفع: فعّل تشفير الواي فاي واستخدم كلمة مرور قوية.");
    } else {
      score -= 10;
      recommendations.push("تحقق من نوع التشفير في إعدادات الراوتر.");
    }

    if (wps === "on") {
      score -= 15;
      recommendations.push("أوقف WPS إذا لم تكن بحاجة إليه.");
    } else if (wps === "") {
      score -= 5;
      recommendations.push("تحقق من حالة WPS.");
    }

    if (admin === "default") {
      score -= 20;
      recommendations.push("غيّر بيانات إدارة الراوتر الافتراضية إلى بيانات فريدة.");
    } else if (!admin) {
      score -= 5;
      recommendations.push("تحقق من تغيير كلمة مرور إدارة الراوتر.");
    }

    if (firmware === "old") {
      score -= 15;
      recommendations.push("حدّث نظام الراوتر من الموقع الرسمي للشركة المصنّعة.");
    } else if (!firmware) {
      score -= 5;
      recommendations.push("تحقق من وجود تحديثات رسمية للراوتر.");
    }

    if (remote === "on") {
      score -= 15;
      recommendations.push("عطّل الإدارة من الإنترنت إن لم تكن تحتاج إليها.");
    } else if (!remote) {
      score -= 5;
      recommendations.push("تحقق من إعدادات الإدارة عن بُعد.");
    }

    const password = passwordAssessment(safeText($("password").value));

    if (password.score > 0) {
      if (password.score < 50) score -= 15;
      else if (password.score < 80) score -= 5;

      recommendations.push("تقييم كلمة المرور: " + password.message);
      password.tips.forEach(tip => recommendations.push(tip));
    } else {
      recommendations.push("راجع طول كلمة مرور الواي فاي وتفرّدها.");
      score -= 5;
    }

    const checkedCount = checks.filter(id => $(id).checked).length;
    if (checkedCount < checks.length) {
      recommendations.push("أكمل قائمة التحقق من إعدادات الراوتر والأجهزة المتصلة.");
    }

    score = Math.max(0, Math.min(100, score));

    let grade, gradeClass;
    if (score >= 85) {
      grade = "إعدادات جيدة مبدئياً";
      gradeClass = "good";
    } else if (score >= 60) {
      grade = "تحتاج بعض التحسينات";
      gradeClass = "warn";
    } else {
      grade = "تحتاج إلى مراجعة مهمة";
      gradeClass = "bad";
    }

    $("score").textContent = score;
    $("grade").textContent = grade;
    $("grade").className = gradeClass;
    $("barFill").style.width = score + "%";
    $("summary").textContent =
      "التقييم مبني على المعلومات المدخلة. " +
      "تم تحديد " + recommendations.length + " ملاحظة أو توصية.";

    const list = $("recommendations");
    list.replaceChildren();

    recommendations.forEach(item => {
      const li = document.createElement("li");
      li.textContent = item;
      list.appendChild(li);
    });

    lastReport = [
      "Shield WiFi Iraq - تقرير تقييم أمان الشبكة",
      "التقييم: " + score + "/100",
      "النتيجة: " + grade,
      "",
      "التوصيات:",
      ...recommendations.map((item, index) => (index + 1) + ". " + item),
      "",
      "ملاحظة: هذا تقييم إرشادي وليس فحصاً تقنياً مباشراً."
    ].join("\n");

    $("results").classList.remove("hidden");
    $("results").scrollIntoView({behavior:"smooth",block:"start"});
  }

  function downloadReport() {
    if (!lastReport) {
      alert("نفّذ التقييم أولاً.");
      return;
    }

    try {
      const blob = new Blob(["\uFEFF" + lastReport], {
        type: "text/plain;charset=utf-8"
      });

      const url = URL.createObjectURL(blob);
      const a = document.createElement("a");
      a.href = url;
      a.download = "shield-wifi-report.txt";
      document.body.appendChild(a);
      a.click();
      a.remove();

      setTimeout(() => URL.revokeObjectURL(url), 1500);
    } catch (error) {
      alert("تعذر تنزيل التقرير. جرّب متصفحاً آخر.");
    }
  }

  function reset() {
    ["encryption","wps","admin","firmware","remote"].forEach(id => {
      $(id).value = "";
    });
    $("password").value = "";
    $("showPassword").checked = false;
    $("password").type = "password";

    ["c1","c2","c3","c4","c5","c6"].forEach(id => {
      $(id).checked = false;
    });

    lastReport = "";
    $("results").classList.add("hidden");
    window.scrollTo({top:0,behavior:"smooth"});
  }

  $("scanBtn").addEventListener("click", () => {
    try {
      assess();
    } catch (error) {
      console.error("Assessment error:", error);
      alert("صار خطأ أثناء التحليل. حدّث الصفحة وجرب مرة ثانية.");
    }
  });

  $("downloadBtn").addEventListener("click", downloadReport);
  $("resetBtn").addEventListener("click", reset);

  $("showPassword").addEventListener("change", event => {
    $("password").type = event.target.checked ? "text" : "password";
  });

})();
</script>
</body>
</html>