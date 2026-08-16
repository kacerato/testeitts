package com.itsmagic.engine.Activities.Editor.Utils;

import android.content.Context;
import android.media.tv.TvContract;
import android.net.Uri;
import android.provider.ContactsContract;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import bd.C3867a;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.itsmagic.engine.Activities.Editor.Extensions.CloudSync.LocalReport;
import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Panels.AI.AIModel;
import com.itsmagic.engine.Activities.Editor.Utils.C12739g;
import com.itsmagic.engine.Core.Components.Settings.Server.UserSystem.UserController;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import ed.C13056c;
import f3.C13183b;
import f6.C13190a;
import fd.b;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.constant.ConstantDescs;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.net.HttpURLConnection;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONObject;
import t3.C15377a;

public class q {

    public static boolean f72153a = true;

    public static final String f72154b;

    public static class a {

        public static final String f72155a = "ai/";

        public class C1145a implements hd.d {

            public final m f72156a;

            public C1145a(final m val$listener) {
                this.f72156a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72156a.onError(result);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                JSONArray d10 = hd.c.d(hd.c.h(result), "data");
                if (d10 != null) {
                    for (int i10 = 0; i10 < d10.length(); i10++) {
                        try {
                            steppedArrayList.add((AIModel) X7.a.m().fromJson(d10.getJSONObject(i10).toString(), AIModel.class));
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                }
                this.f72156a.onSuccess(steppedArrayList);
            }
        }

        public class b extends HashMap<String, String> {

            public final int f72157b;

            public b(final int val$offset) {
                this.f72157b = val$offset;
                put("offset", "" + val$offset);
            }
        }

        public class c implements hd.d {

            public final o f72158a;

            public c(final o val$listener) {
                this.f72158a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72158a.onError(result);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                this.f72158a.c(hd.c.g(hd.c.f(hd.c.h(result), "values"), "task_tag"));
            }
        }

        public class d extends HashMap<String, String> {

            public final String f72159b;

            public final String f72160c;

            public final String f72161d;

            public final int f72162e;

            public final int f72163f;

            public d(final String val$prompt, final String val$negative_prompt, final String val$art_style, final int val$target_polycount, final int val$currency) {
                this.f72159b = val$prompt;
                this.f72160c = val$negative_prompt;
                this.f72161d = val$art_style;
                this.f72162e = val$target_polycount;
                this.f72163f = val$currency;
                put("prompt", val$prompt);
                put("negative_prompt", val$negative_prompt);
                put("art_style", val$art_style);
                put("polycount", "" + val$target_polycount);
                put(FirebaseAnalytics.d.f67703i, "" + val$currency);
            }
        }

        public class e implements hd.d {

            public final n f72164a;

            public e(final n val$listener) {
                this.f72164a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72164a.onError(result);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                JSONObject f10 = hd.c.f(hd.c.h(result), "values");
                this.f72164a.a(Nc.b.v1(hd.c.g(f10, "progress"), 0.0f), "true".equalsIgnoreCase(hd.c.g(f10, "done")), "true".equalsIgnoreCase(hd.c.g(f10, "error")));
            }
        }

        public class f extends HashMap<String, String> {

            public final String f72165b;

            public f(final String val$taskTag) {
                this.f72165b = val$taskTag;
                put("task_tag", val$taskTag);
            }
        }

        public class g implements C12739g.d {

            public final l f72166a;

            public final File f72167b;

            public g(final l val$listener, final File val$outFile) {
                this.f72166a = val$listener;
                this.f72167b = val$outFile;
            }

            @Override
            public void a(float p10, int downloadedBytes, int totalBytes) {
                this.f72166a.a(p10);
            }

            @Override
            public void b(File file) {
                this.f72166a.b(file);
            }

            @Override
            public void onError(String msg) {
                if (this.f72167b.exists()) {
                    this.f72167b.delete();
                }
                this.f72166a.onError(msg);
            }
        }

        public class h implements C12739g.d {

            public final File f72168a;

            public final String f72169b;

            public final l f72170c;

            public final File f72171d;

            public h(final File val$destinationFolder, final String val$finalFileName, final l val$listener, final File val$outFile) {
                this.f72168a = val$destinationFolder;
                this.f72169b = val$finalFileName;
                this.f72170c = val$listener;
                this.f72171d = val$outFile;
            }

            @Override
            public void a(float p10, int downloadedBytes, int totalBytes) {
                this.f72170c.a(p10);
            }

            @Override
            public void b(File file) {
                TextureConfig textureConfig = new TextureConfig();
                textureConfig.maxResolutionID = 12;
                X7.a.j(Tc.b.o(this.f72168a.getAbsolutePath() + "/" + this.f72169b + ".config"), X7.a.m().toJson(textureConfig));
                this.f72170c.b(file);
            }

            @Override
            public void onError(String msg) {
                if (this.f72171d.exists()) {
                    this.f72171d.delete();
                }
                this.f72170c.onError(msg);
            }
        }

        public class i implements C12739g.d {

            public final l f72172a;

            public final File f72173b;

            public i(final l val$listener, final File val$outFile) {
                this.f72172a = val$listener;
                this.f72173b = val$outFile;
            }

            @Override
            public void a(float p10, int downloadedBytes, int totalBytes) {
                this.f72172a.a(p10);
            }

            @Override
            public void b(File file) {
                this.f72172a.b(file);
            }

            @Override
            public void onError(String msg) {
                if (this.f72173b.exists()) {
                    this.f72173b.delete();
                }
                this.f72172a.onError(msg);
            }
        }

        public class j implements hd.d {

            public final m f72174a;

            public j(final m val$listener) {
                this.f72174a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72174a.onError(result);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                JSONArray d10 = hd.c.d(hd.c.h(result), "data");
                if (d10 != null) {
                    for (int i10 = 0; i10 < d10.length(); i10++) {
                        try {
                            steppedArrayList.add((AIModel) X7.a.m().fromJson(d10.getJSONObject(i10).toString(), AIModel.class));
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                }
                this.f72174a.onSuccess(steppedArrayList);
            }
        }

        public class k extends HashMap<String, String> {

            public final int f72175b;

            public k(final int val$offset) {
                this.f72175b = val$offset;
                put("offset", "" + val$offset);
            }
        }

        public interface l {
            void a(float p10);

            void b(File file);

            void onError(String result);
        }

        public interface m {
            void onError(String result);

            void onSuccess(List<AIModel> models);
        }

        public interface n {
            void a(float p10, boolean done, boolean error);

            void onError(String result);
        }

        public interface o {
            void c(String taskTag);

            void onError(String result);
        }

        public static void a(String taskTag, l listener) {
            UserController userController = W7.b.f27306f.f2461d;
            if (userController == null || !userController.Q()) {
                throw new NullPointerException("User not logged!");
            }
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/Files/AI/Models/" + taskTag + "/");
            File file2 = new File(file, "model.mtl");
            if (file2.exists()) {
                listener.a(1.0f);
                listener.b(new File(file, "model.mtl"));
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("task_tag", taskTag);
            hashMap.putAll(i.f());
            hashMap.putAll(g.a());
            try {
                C12739g.a(g(hashMap, g.b(f72155a, "downloadMTL")), file, "model.mtl", new i(listener, file2));
            } catch (Exception e10) {
                e10.printStackTrace();
                if (file2.exists()) {
                    file2.delete();
                }
                listener.onError(e10.getMessage());
            }
        }

        public static void b(String taskTag, l listener) {
            UserController userController = W7.b.f27306f.f2461d;
            if (userController == null || !userController.Q()) {
                throw new NullPointerException("User not logged!");
            }
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/Files/AI/Models/" + taskTag + "/");
            File file2 = new File(file, "model.obj");
            if (file2.exists()) {
                listener.a(1.0f);
                listener.b(new File(file, "model.obj"));
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("task_tag", taskTag);
            hashMap.putAll(i.f());
            hashMap.putAll(g.a());
            try {
                C12739g.a(g(hashMap, g.b(f72155a, "downloadObj")), file, "model.obj", new g(listener, file2));
            } catch (Exception e10) {
                e10.printStackTrace();
                if (file2.exists()) {
                    file2.delete();
                }
                listener.onError(e10.getMessage());
            }
        }

        public static void c(String taskTag, String name, l listener) {
            if (name == null) {
                name = "";
            }
            UserController userController = W7.b.f27306f.f2461d;
            if (userController == null || !userController.Q()) {
                throw new NullPointerException("User not logged!");
            }
            File file = new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/Files/AI/Models/" + taskTag + "/");
            String str = "Image_0";
            if (!name.isEmpty()) {
                str = "Image_0" + ConstantDescs.DEFAULT_NAME + name;
            }
            String str2 = str + ".png";
            File file2 = new File(file, str2);
            if (file2.exists()) {
                listener.a(1.0f);
                listener.b(new File(file, str2));
                return;
            }
            HashMap hashMap = new HashMap();
            hashMap.put("task_tag", taskTag);
            hashMap.putAll(i.f());
            hashMap.putAll(g.a());
            try {
                C12739g.a(g(hashMap, g.b(f72155a, "downloadTexture" + Tc.b.d(name))), file, str2, new h(file, str2, listener, file2));
            } catch (Exception e10) {
                e10.printStackTrace();
                if (file2.exists()) {
                    file2.delete();
                }
                listener.onError(e10.getMessage());
            }
        }

        public static void d(int offset, m listener) {
            C13056c c13056c = new C13056c(new C1145a(listener));
            b bVar = new b(offset);
            bVar.putAll(i.f());
            bVar.putAll(g.a());
            c13056c.d(new hd.e(g.b(f72155a, "getCommunityModels"), bVar, N7.c.t(), !q.f72153a));
        }

        public static void e(int offset, m listener) {
            UserController userController = W7.b.f27306f.f2461d;
            if (userController == null || !userController.Q()) {
                listener.onError("User not logged!");
            }
            C13056c c13056c = new C13056c(new j(listener));
            k kVar = new k(offset);
            kVar.putAll(i.f());
            kVar.putAll(g.a());
            c13056c.d(new hd.e(g.b(f72155a, "getModels"), kVar, N7.c.t(), !q.f72153a));
        }

        public static void f(String taskTag, n listener) {
            UserController userController = W7.b.f27306f.f2461d;
            if (userController == null || !userController.Q()) {
                throw new NullPointerException("User not logged!");
            }
            C13056c c13056c = new C13056c(new e(listener));
            f fVar = new f(taskTag);
            fVar.putAll(i.f());
            fVar.putAll(g.a());
            c13056c.d(new hd.e(g.b(f72155a, "getProgress"), fVar, N7.c.t(), !q.f72153a));
        }

        @NonNull
        public static String g(Map<String, String> params, String urlAddress) {
            Set<String> o10 = params.o();
            StringBuilder sb2 = new StringBuilder(urlAddress);
            sb2.append("?");
            boolean z10 = true;
            for (String str : o10) {
                try {
                    String encode = URLEncoder.encode(str, "UTF-8");
                    String encode2 = URLEncoder.encode(params.get(str), "UTF-8");
                    if (z10) {
                        z10 = false;
                    } else {
                        sb2.append("&");
                    }
                    sb2.append(encode);
                    sb2.append("=");
                    sb2.append(encode2);
                } catch (UnsupportedEncodingException e10) {
                    e10.printStackTrace();
                }
            }
            return sb2.toString();
        }

        public static String h(String taskTag) {
            HashMap hashMap = new HashMap();
            hashMap.put("task_tag", taskTag);
            hashMap.putAll(i.f());
            hashMap.putAll(g.a());
            return g(hashMap, g.b(f72155a, "downloadThumb"));
        }

        public static void i(String prompt, String negative_prompt, String art_style, int target_polycount, int currency, o listener) {
            UserController userController = W7.b.f27306f.f2461d;
            if (userController == null || !userController.Q()) {
                throw new NullPointerException("User not logged!");
            }
            C13056c c13056c = new C13056c(new c(listener));
            d dVar = new d(prompt, negative_prompt, art_style, target_polycount, currency);
            dVar.putAll(i.f());
            dVar.putAll(g.a());
            c13056c.d(new hd.e(g.b(f72155a, "text_to_3d"), dVar, N7.c.t(), !q.f72153a));
        }
    }

    public static class b {

        public static final String f72176a = "assets/";

        public class a implements hd.d {

            public final d f72177a;

            public class C1146a implements j.a {
                public C1146a() {
                }

                @Override
                public void a(String str) {
                    a.this.f72177a.a(str);
                }
            }

            public a(final d val$listener) {
                this.f72177a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                if (j.c(result)) {
                    this.f72177a.b();
                } else {
                    if (j.a(result, new C1146a())) {
                        return;
                    }
                    this.f72177a.a(hd.c.g(hd.c.h(result), "info"));
                }
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                this.f72177a.c(hd.c.g(hd.c.h(result), "info"));
            }
        }

        public class C1147b extends HashMap<String, String> {

            public final String f72179b;

            public C1147b(final String val$manifest) {
                this.f72179b = val$manifest;
                put("manifest", val$manifest);
            }
        }

        public class c extends HashMap<String, String> {
        }

        public interface d {
            void a(String message);

            void b();

            void c(String result);
        }

        public static void a(String manifest, d listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new a(listener));
            C1147b c1147b = new C1147b(manifest);
            c1147b.putAll(i.f());
            c1147b.putAll(g.a());
            c13056c.d(new hd.e(g.b(f72176a, "checkManifestv2"), c1147b, t10, !q.f72153a));
        }

        public static void b(C12739g.d listener) {
            c cVar = new c();
            cVar.putAll(i.f());
            cVar.putAll(g.a());
            String a10 = B7.a.a(g.b(f72176a, "downloadGalleryv2"), cVar);
            File file = new File(W7.b.f27306f.f2458a.f() + "/gallery/");
            new File(file, "pack.zip").delete();
            try {
                C12739g.a(a10, file, "pack.zip", listener);
            } catch (Exception e10) {
                e10.printStackTrace();
                listener.onError(e10.getMessage());
            }
        }
    }

    public static class c {

        public static final String f72180a = "billing/";

        public class a implements hd.d {

            public final hd.d f72181a;

            public a(final hd.d val$listener) {
                this.f72181a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72181a.a(result);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                this.f72181a.b(result);
            }
        }

        public interface b {
            void a(String message);

            void b();

            void onSuccess();
        }

        public static void a(HashMap<String, String> params, hd.d listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new a(listener));
            params.putAll(i.f());
            params.putAll(g.a());
            c13056c.d(new hd.e(g.b(f72180a, "requestPurchase"), params, t10, !q.f72153a));
        }
    }

    public static class d {

        public static final String f72182a = "cloudsync/";

        public class a implements hd.d {

            public final InterfaceC1152q f72183a;

            public class C1148a implements j.a {
                public C1148a() {
                }

                @Override
                public void a(String str) {
                    a.this.f72183a.a(str);
                }
            }

            public a(final InterfaceC1152q val$listener) {
                this.f72183a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                if (j.c(result)) {
                    this.f72183a.b();
                } else {
                    if (j.a(result, new C1148a())) {
                        return;
                    }
                    this.f72183a.a(hd.c.g(hd.c.h(result), "info"));
                }
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                JSONArray d10 = hd.c.d(hd.c.h(result), "data");
                if (d10 == null) {
                    this.f72183a.a("Invalid data returned!");
                    return;
                }
                SteppedArrayList steppedArrayList = new SteppedArrayList();
                for (int i10 = 0; i10 < d10.length(); i10++) {
                    try {
                        steppedArrayList.add(d10.getString(i10));
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                this.f72183a.onSuccess(steppedArrayList);
            }
        }

        public class b implements hd.d {

            public final p f72185a;

            public class a implements j.a {
                public a() {
                }

                @Override
                public void a(String str) {
                    b.this.f72185a.a(str);
                }
            }

            public b(final p val$listener) {
                this.f72185a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                if (j.c(result)) {
                    this.f72185a.b();
                } else {
                    if (j.a(result, new a())) {
                        return;
                    }
                    this.f72185a.a(hd.c.g(hd.c.h(result), "info"));
                }
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                hd.c.h(result);
                this.f72185a.onSuccess();
            }
        }

        public class c extends HashMap<String, String> {

            public final String f72187b;

            public final String f72188c;

            public final String f72189d;

            public c(final String val$projectName, final String val$inProjectPath, final String val$clientLastModified) {
                this.f72187b = val$projectName;
                this.f72188c = val$inProjectPath;
                this.f72189d = val$clientLastModified;
                put("pn", val$projectName);
                put("ipp", val$inProjectPath);
                put("clm", val$clientLastModified);
            }
        }

        public class C1149d extends HashMap<String, String> {

            public final String f72190b;

            public final String f72191c;

            public final String f72192d;

            public C1149d(final String val$projectName, final String val$inProjectPath, final String val$clientLastModified) {
                this.f72190b = val$projectName;
                this.f72191c = val$inProjectPath;
                this.f72192d = val$clientLastModified;
                put("pn", val$projectName);
                put("ipp", val$inProjectPath);
                put("clm", val$clientLastModified);
            }
        }

        public class e extends HashMap<String, String> {

            public final String f72193b;

            public final String f72194c;

            public e(final String val$projectName, final String val$inProjectPath) {
                this.f72193b = val$projectName;
                this.f72194c = val$inProjectPath;
                put("pn", val$projectName);
                put("ipp", val$inProjectPath);
            }
        }

        public class f implements Runnable {

            public final File f72195b;

            public final s f72196c;

            public final String f72197d;

            public final String f72198e;

            public final String f72199f;

            public final Context f72200g;

            public class a extends HashMap<String, String> {
                public a() {
                    put("bytes", f.this.f72195b.length() + "");
                }
            }

            public class b implements Runnable {

                public final JSONObject f72202b;

                public b(final JSONObject val$obj) {
                    this.f72202b = val$obj;
                }

                @Override
                public void run() {
                    f.this.f72196c.a(hd.c.g(this.f72202b, "info"));
                }
            }

            public class c extends HashMap<String, String> {
                public c() {
                    put("pn", f.this.f72197d);
                    put("ipp", f.this.f72198e);
                    put("clm", f.this.f72199f);
                }
            }

            public class C1150d implements b.a {

                public int f72205a = -1;

                public C1150d() {
                }

                @Override
                public void a(long count, long max, double p10) {
                    int i10 = (int) p10;
                    if (i10 != this.f72205a) {
                        this.f72205a = i10;
                        if (q.f72153a) {
                            Log.e(q.f72154b, "Upload " + count + "/" + max + " - " + i10 + ve.j.f121589a);
                        }
                        f.this.f72196c.c(count, max, i10);
                    }
                }
            }

            public class e implements hd.d {
                public e() {
                }

                @Override
                public void a(String result) {
                    if (q.f72153a) {
                        Log.e(q.f72154b, "Error:" + result);
                    }
                    f.this.f72196c.a(result);
                }

                @Override
                public void b(String result) {
                    f.this.f72196c.onSuccess();
                }
            }

            public class RunnableC1151f implements Runnable {
                public RunnableC1151f() {
                }

                @Override
                public void run() {
                    f.this.f72196c.a("No enough cloud space");
                }
            }

            public f(final File val$file, final s val$listener, final String val$projectName, final String val$inProjectPath, final String val$clientLastModified, final Context val$context) {
                this.f72195b = val$file;
                this.f72196c = val$listener;
                this.f72197d = val$projectName;
                this.f72198e = val$inProjectPath;
                this.f72199f = val$clientLastModified;
                this.f72200g = val$context;
            }

            @Override
            public void run() {
                a aVar = new a();
                aVar.putAll(i.f());
                aVar.putAll(g.a());
                String d10 = B7.f.d(g.b(d.f72182a, "canAllocate"), aVar, 60);
                JSONObject h10 = hd.c.h(d10);
                if (!hd.c.g(h10, "status").equalsIgnoreCase(FirebaseAnalytics.d.f67668H)) {
                    if (q.f72153a) {
                        Log.e(q.f72154b, "Error:" + d10);
                    }
                    N7.c.j0(new b(h10));
                    return;
                }
                if (!"true".equalsIgnoreCase(hd.c.g(hd.c.f(h10, "values"), "canAllocate"))) {
                    N7.c.j0(new RunnableC1151f());
                    return;
                }
                c cVar = new c();
                cVar.putAll(i.f());
                cVar.putAll(g.a());
                fd.d dVar = new fd.d(new e());
                File file = this.f72195b;
                dVar.d(new fd.b(file, Uri.fromFile(file), g.b(d.f72182a, "uploadFile"), cVar, new C1150d(), this.f72200g));
            }
        }

        public class g extends HashMap<String, String> {

            public final String f72209b;

            public final String f72210c;

            public g(final String val$projectName, final String val$inProjectPath) {
                this.f72209b = val$projectName;
                this.f72210c = val$inProjectPath;
                put("pn", val$projectName);
                put("ipp", val$inProjectPath);
            }
        }

        public class h extends HashMap<String, String> {
        }

        public class i implements hd.d {

            public final r f72211a;

            public class a implements j.a {
                public a() {
                }

                @Override
                public void a(String str) {
                    i.this.f72211a.a(str);
                }
            }

            public i(final r val$listener) {
                this.f72211a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                if (j.c(result)) {
                    this.f72211a.b();
                } else {
                    if (j.a(result, new a())) {
                        return;
                    }
                    this.f72211a.a(hd.c.g(hd.c.h(result), "info"));
                }
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                this.f72211a.c(result);
            }
        }

        public class j extends HashMap<String, String> {
        }

        public class k implements hd.d {

            public final r f72213a;

            public k(final r val$listener) {
                this.f72213a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                if (j.c(result)) {
                    this.f72213a.b();
                } else {
                    this.f72213a.a(result);
                }
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                this.f72213a.c(result);
            }
        }

        public class l extends HashMap<String, String> {

            public final String f72214b;

            public l(final String val$projectName) {
                this.f72214b = val$projectName;
                put("pn", val$projectName);
            }
        }

        public class m implements hd.d {

            public final r f72215a;

            public class a implements j.a {
                public a() {
                }

                @Override
                public void a(String str) {
                    m.this.f72215a.a(str);
                }
            }

            public m(final r val$listener) {
                this.f72215a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                if (j.c(result)) {
                    this.f72215a.b();
                } else {
                    if (j.a(result, new a())) {
                        return;
                    }
                    this.f72215a.a(hd.c.g(hd.c.h(result), "info"));
                }
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                this.f72215a.c(result);
            }
        }

        public class n extends HashMap<String, String> {

            public final String f72217b;

            public final String f72218c;

            public n(final String val$projectName, final String val$inProjectPath) {
                this.f72217b = val$projectName;
                this.f72218c = val$inProjectPath;
                put("pn", val$projectName);
                put("ipp", val$inProjectPath);
            }
        }

        public class o extends HashMap<String, String> {

            public final String f72219b;

            public final LocalReport f72220c;

            public o(final String val$projectName, final LocalReport val$localReport) {
                this.f72219b = val$projectName;
                this.f72220c = val$localReport;
                put("pn", val$projectName);
                put("report", X7.a.m().toJson(val$localReport));
            }
        }

        public interface p {
            void a(String message);

            void b();

            void onSuccess();
        }

        public interface InterfaceC1152q {
            void a(String message);

            void b();

            void onSuccess(List<String> projects);
        }

        public interface r {
            void a(String message);

            void b();

            void c(String result);
        }

        public interface s {
            void a(String message);

            void b();

            void c(long count, long ma2, int percentage);

            void onSuccess();
        }

        public static void a(String projectName, r listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new k(listener));
            l lVar = new l(projectName);
            lVar.putAll(i.f());
            lVar.putAll(g.a());
            c13056c.d(new hd.e(g.b(f72182a, "deleteProject"), lVar, t10, !q.f72153a));
        }

        public static void b(String projectName, String inProjectPath, C12739g.d listener) {
            g gVar = new g(projectName, inProjectPath);
            gVar.putAll(i.f());
            gVar.putAll(g.a());
            try {
                C12739g.a(B7.a.a(g.b(f72182a, "downloadFile"), gVar), new File(com.itsmagic.engine.Core.Components.ProjectController.a.Y(projectName) + "/" + Tc.b.u(inProjectPath)), Tc.b.v(inProjectPath), listener);
            } catch (IOException e10) {
                e10.printStackTrace();
                listener.onError(e10.getMessage());
            }
        }

        public static String c(String projectName, String inProjectPath) {
            N7.c.t();
            e eVar = new e(projectName, inProjectPath);
            eVar.putAll(i.f());
            eVar.putAll(g.a());
            return B7.f.d(g.b(f72182a, "excludeFile"), eVar, 60);
        }

        public static void d(String projectName, String inProjectPath, r listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new m(listener));
            n nVar = new n(projectName, inProjectPath);
            nVar.putAll(i.f());
            nVar.putAll(g.a());
            c13056c.d(new hd.e(g.b(f72182a, "getFileLM"), nVar, t10, !q.f72153a));
        }

        public static void e(InterfaceC1152q listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new a(listener));
            h hVar = new h();
            hVar.putAll(i.f());
            hVar.putAll(g.a());
            c13056c.d(new hd.e(g.b(f72182a, "getProjects"), hVar, t10, !q.f72153a));
        }

        public static String f(String projectName, LocalReport localReport) {
            N7.c.t();
            o oVar = new o(projectName, localReport);
            oVar.putAll(i.f());
            oVar.putAll(g.a());
            return B7.f.d(g.b(f72182a, "getReport"), oVar, 60);
        }

        public static void g(r listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new i(listener));
            j jVar = new j();
            jVar.putAll(i.f());
            jVar.putAll(g.a());
            c13056c.d(new hd.e(g.b(f72182a, "getUserInfo"), jVar, t10, !q.f72153a));
        }

        public static void h(String projectName, String inProjectPath, String clientLastModified, p listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new b(listener));
            c cVar = new c(projectName, inProjectPath, clientLastModified);
            cVar.putAll(i.f());
            cVar.putAll(g.a());
            c13056c.d(new hd.e(g.b(f72182a, "isUpToDate"), cVar, t10, !q.f72153a));
        }

        public static String i(String projectName, String inProjectPath, String clientLastModified) {
            N7.c.t();
            C1149d c1149d = new C1149d(projectName, inProjectPath, clientLastModified);
            c1149d.putAll(i.f());
            c1149d.putAll(g.a());
            return B7.f.d(g.b(f72182a, "isUpToDate"), c1149d, 60);
        }

        public static void j(String projectName, String inProjectPath, String clientLastModified, File file, s listener) {
            if (listener == null) {
                throw new NullPointerException("listener can't be null");
            }
            if (!file.exists()) {
                throw new RuntimeException("File not found!");
            }
            Thread thread = new Thread(new f(file, listener, projectName, inProjectPath, clientLastModified, N7.c.t()));
            thread.setPriority(1);
            thread.start();
        }
    }

    public static class e {

        public static final String f72221a = "collect/";

        public class a implements hd.d {
            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
            }
        }

        public class b extends HashMap<String, String> {

            public final String f72222b;

            public final String f72223c;

            public b(final String val$event, final String val$device) {
                this.f72222b = val$event;
                this.f72223c = val$device;
                put("event", "" + val$event);
                put("device_sid", "" + val$device);
            }
        }

        public static void a(String event) {
            String e10 = W7.b.f27306f.e();
            C13056c c13056c = new C13056c(new a());
            b bVar = new b(event, e10);
            bVar.putAll(i.f());
            bVar.putAll(g.a());
            c13056c.d(new hd.e(g.b(f72221a, "event"), bVar, N7.c.t(), !q.f72153a));
        }
    }

    @Deprecated
    public static class f {

        @Deprecated
        public static final String f72224a = "users/";

        public class a implements hd.d {

            public final k f72225a;

            public class C1153a implements j.a {
                public C1153a() {
                }

                @Override
                public void a(String str) {
                    a.this.f72225a.a(str);
                }
            }

            public a(final k val$listener) {
                this.f72225a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                if (j.c(result)) {
                    this.f72225a.b();
                } else {
                    if (j.a(result, new C1153a())) {
                        return;
                    }
                    this.f72225a.a(hd.c.g(hd.c.h(result), "info"));
                }
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                JSONObject f10 = hd.c.f(hd.c.h(result), "values");
                this.f72225a.c(hd.c.g(f10, "email"), "1".equalsIgnoreCase(hd.c.g(f10, "confirmed")), hd.c.g(f10, "at"), Nc.b.w1(hd.c.g(f10, "etd")));
            }
        }

        public class b extends HashMap<String, String> {
        }

        public class c implements hd.d {

            public final j f72227a;

            public class a implements j.a {
                public a() {
                }

                @Override
                public void a(String str) {
                    c.this.f72227a.a(str);
                }
            }

            public c(final j val$listener) {
                this.f72227a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                if (j.c(result)) {
                    this.f72227a.b();
                } else {
                    if (j.a(result, new a())) {
                        return;
                    }
                    this.f72227a.a(hd.c.g(hd.c.h(result), "info"));
                }
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                this.f72227a.onSuccess();
            }
        }

        public class d extends HashMap<String, String> {

            public final String f72229b;

            public d(final String val$email) {
                this.f72229b = val$email;
                put("email", "" + val$email);
            }
        }

        public class e implements hd.d {

            public final j f72230a;

            public class a implements j.a {
                public a() {
                }

                @Override
                public void a(String str) {
                    e.this.f72230a.a(str);
                }
            }

            public e(final j val$listener) {
                this.f72230a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                if (j.c(result)) {
                    this.f72230a.b();
                } else {
                    if (j.a(result, new a())) {
                        return;
                    }
                    this.f72230a.a(hd.c.g(hd.c.h(result), "info"));
                }
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                this.f72230a.onSuccess();
            }
        }

        public class C1154f extends HashMap<String, String> {
        }

        public class g implements hd.d {

            public final j f72232a;

            public class a implements j.a {
                public a() {
                }

                @Override
                public void a(String str) {
                    g.this.f72232a.a(str);
                }
            }

            public g(final j val$listener) {
                this.f72232a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                if (j.c(result)) {
                    this.f72232a.b();
                } else {
                    if (j.a(result, new a())) {
                        return;
                    }
                    this.f72232a.a(hd.c.g(hd.c.h(result), "info"));
                }
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                this.f72232a.onSuccess();
            }
        }

        public class h extends HashMap<String, String> {

            public final String f72234b;

            public h(final String val$code) {
                this.f72234b = val$code;
                put("code", val$code);
                put("user_id", i.d().f72250c);
            }
        }

        @Deprecated
        public static class i implements j {
            @Override
            public void a(String message) {
            }

            @Override
            public void b() {
            }

            @Override
            public void onSuccess() {
            }
        }

        @Deprecated
        public interface j {
            void a(String message);

            void b();

            void onSuccess();
        }

        @Deprecated
        public interface k {
            void a(String message);

            void b();

            void c(String email, boolean confirmed, String confirmedAt, int etd);
        }

        @Deprecated
        public static void a(k listener) {
            if (listener == null) {
                throw new NullPointerException("listener can't be null");
            }
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new a(listener));
            b bVar = new b();
            bVar.putAll(i.f());
            bVar.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "getEmail"), bVar, t10, !q.f72153a));
        }

        @Deprecated
        public static void b(String code, j listener) {
            if (listener == null) {
                throw new NullPointerException("listener can't be null");
            }
            if (!i.k()) {
                listener.a("Invalid user id");
                return;
            }
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new g(listener));
            h hVar = new h(code);
            hVar.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "confirmEmail"), hVar, t10, !q.f72153a));
        }

        @Deprecated
        public static void c(j listener) {
            if (listener == null) {
                throw new NullPointerException("listener can't be null");
            }
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new e(listener));
            C1154f c1154f = new C1154f();
            c1154f.putAll(i.f());
            c1154f.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "sendConfirmEmail"), c1154f, t10, !q.f72153a));
        }

        @Deprecated
        public static void d(String email, j listener) {
            if (listener == null) {
                throw new NullPointerException("listener can't be null");
            }
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new c(listener));
            d dVar = new d(email);
            dVar.putAll(i.f());
            dVar.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "setEmail"), dVar, t10, !q.f72153a));
        }
    }

    public static class g {

        public static final String f72235a = "104.156.226.134";

        public static final String f72236b = "itsmagic.com.br";

        public static final String f72237c = "81";

        public class a extends HashMap<String, String> {

            public final Context f72238b;

            public a(final Context val$context) {
                this.f72238b = val$context;
                C8.a aVar = W7.b.f27306f;
                put("certificate", aVar.d());
                put(TvContract.BaseTvColumns.COLUMN_PACKAGE_NAME, N7.c.C());
                put("deviceLang", Locale.getDefault().toLanguageTag());
                put("appversion", aVar.b(val$context));
            }
        }

        public static HashMap<String, String> a() {
            return new a(N7.c.t());
        }

        public static String b(String location, String endpoint) {
            return "http://104.156.226.134:81/" + location + endpoint;
        }
    }

    public static class h {

        public static final String f72239a = "users/";

        public class a implements hd.d {

            public final UserController f72240a;

            public a(final UserController val$usercontroller) {
                this.f72240a = val$usercontroller;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72240a.a0(true);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                if ("true".equals(hd.c.g(hd.c.f(hd.c.h(result), "values"), "hourReward"))) {
                    d(e() ? 6 : 4, Lang.l(Lang.T.USED_APP_FOR_1_HOUR));
                }
            }

            public final View c(int coins, String descText) {
                View inflate = N7.c.B().inflate(R.layout.earn_coins_notifications, (ViewGroup) null);
                TextView textView = (TextView) inflate.findViewById(R.id.tittle);
                TextView textView2 = (TextView) inflate.findViewById(R.id.desc);
                inflate.findViewById(R.id.vipTag).setVisibility(e() ? 0 : 8);
                textView.setText(Lang.l(Lang.T.EARN_COINS).replace("{C}", coins + ""));
                textView2.setText(descText);
                return inflate;
            }

            public void d(int coins, String desc) {
                C13190a.p1(c(coins, desc), R.drawable.coin, "Message", true);
            }

            public final boolean e() {
                C8.a aVar = W7.b.f27306f;
                UserController userController = aVar.f2461d;
                return userController != null && userController.Q() && aVar.f2461d.T();
            }
        }

        public class b extends HashMap<String, String> {
        }

        public static void a() {
            UserController userController = W7.b.f27306f.f2461d;
            if (userController == null || !userController.Q()) {
                throw new NullPointerException("User not logged!");
            }
            C13056c c13056c = new C13056c(new a(userController));
            b bVar = new b();
            bVar.putAll(i.f());
            bVar.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "addUsageTick"), bVar, N7.c.t(), !q.f72153a));
        }
    }

    public static class i {

        public static final String f72241a = "users/";

        public class A extends HashMap<String, String> {
        }

        public class B implements hd.d {

            public final H f72242a;

            public class a implements j.a {
                public a() {
                }

                @Override
                public void a(String str) {
                    B.this.f72242a.a(str);
                }
            }

            public B(final H val$listener) {
                this.f72242a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                if (j.c(result)) {
                    this.f72242a.b();
                } else {
                    if (j.a(result, new a())) {
                        return;
                    }
                    this.f72242a.a(hd.c.g(hd.c.h(result), "info"));
                }
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                this.f72242a.onSuccess();
            }
        }

        public class C extends HashMap<String, String> {
        }

        public class D implements hd.d {

            public final J f72244a;

            public class a implements j.a {
                public a() {
                }

                @Override
                public void a(String str) {
                    D.this.f72244a.a(str);
                }
            }

            public D(final J val$listener) {
                this.f72244a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                if (j.c(result)) {
                    this.f72244a.b();
                } else {
                    if (j.a(result, new a())) {
                        return;
                    }
                    this.f72244a.a(hd.c.g(hd.c.h(result), "info"));
                }
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                if ("true".equalsIgnoreCase(hd.c.g(hd.c.f(hd.c.h(result), "values"), "isInLimit"))) {
                    this.f72244a.c();
                } else {
                    this.f72244a.d();
                }
            }
        }

        public class E extends HashMap<String, String> {
        }

        public class F implements hd.d {

            public final K f72246a;

            public class a implements j.a {
                public a() {
                }

                @Override
                public void a(String str) {
                    F.this.f72246a.a(str);
                }
            }

            public F(final K val$listener) {
                this.f72246a = val$listener;
            }

            @Override
            public void a(String result) {
                if (j.c(result)) {
                    this.f72246a.b();
                } else {
                    if (j.a(result, new a())) {
                        return;
                    }
                    this.f72246a.a(hd.c.g(hd.c.h(result), "info"));
                }
            }

            @Override
            public void b(String result) {
                if ("true".equalsIgnoreCase(hd.c.g(hd.c.f(hd.c.h(result), "values"), "exporting"))) {
                    this.f72246a.c();
                } else {
                    this.f72246a.d();
                }
            }
        }

        public class G extends HashMap<String, String> {
        }

        public interface H {
            void a(String message);

            void b();

            void onSuccess();
        }

        public interface I {
            void a();

            void b();

            void onError(String result);
        }

        public interface J {
            void a(String message);

            void b();

            void c();

            void d();
        }

        public interface K {
            void a(String message);

            void b();

            void c();

            void d();
        }

        public interface L {
            void a();

            void isActive();

            void onError(String result);
        }

        public interface M {
            void a(boolean canClaim, boolean isVipDay, int days);

            void onError(String error);
        }

        public interface N {
            void a(String token, String userID);

            void onError(String error);
        }

        public static class O {

            public String f72248a;

            public boolean f72249b;

            public String f72250c;

            public int f72251d;

            public String f72252e;

            public int a() {
                return this.f72251d;
            }

            public long b() {
                return Nc.b.z1(this.f72250c);
            }

            public String c() {
                int i10 = 0;
                while (true) {
                    String str = this.f72248a;
                    if (str == null || !str.startsWith("base64@")) {
                        break;
                    }
                    this.f72248a = Vc.b.a(this.f72248a.replace("base64@", ""));
                    i10++;
                }
                if (i10 > 1) {
                    System.out.println("BASE64 WAS DECODED " + i10 + " TIMES!!");
                }
                return this.f72248a;
            }

            public String d() {
                return this.f72252e;
            }

            public boolean e() {
                return this.f72249b;
            }
        }

        public class C12742a implements hd.d {

            public final String f72253a;

            public final Context f72254b;

            public final N f72255c;

            public class C1155a implements UserController.g {

                public final String f72256a;

                public final String f72257b;

                public C1155a(final String val$token, final String val$userid) {
                    this.f72256a = val$token;
                    this.f72257b = val$userid;
                }

                @Override
                public void a() {
                    C12742a.this.f72255c.onError("Token failed at server");
                }

                @Override
                public void onSuccess() {
                    C12742a.this.f72255c.a(this.f72256a, this.f72257b);
                }
            }

            public C12742a(final String val$username, final Context val$context, final N val$listener) {
                this.f72253a = val$username;
                this.f72254b = val$context;
                this.f72255c = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72255c.onError(result);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                JSONObject f10 = hd.c.f(hd.c.h(result), "values");
                String g10 = hd.c.g(f10, C13183b.f85996h);
                String g11 = hd.c.g(f10, "userid");
                C8.a aVar = W7.b.f27306f;
                aVar.f2461d.g0(g10);
                aVar.f2461d.i0(this.f72253a);
                aVar.f2461d.h0(g11);
                aVar.f2461d.d0(false);
                aVar.f2461d.e0(true, this.f72254b, false);
                aVar.f2461d.k0(new C1155a(g10, g11));
                R6.a.q1();
            }
        }

        public class C12743b extends HashMap<String, String> {

            public final String f72259b;

            public final String f72260c;

            public C12743b(final String val$username, final String val$password) {
                this.f72259b = val$username;
                this.f72260c = val$password;
                put(View.AUTOFILL_HINT_USERNAME, val$username);
                put("password", val$password);
            }
        }

        public class C12744c implements hd.d {

            public final Context f72261a;

            public final N f72262b;

            public class a implements UserController.g {

                public final String f72263a;

                public final String f72264b;

                public a(final String val$token, final String val$userid) {
                    this.f72263a = val$token;
                    this.f72264b = val$userid;
                }

                @Override
                public void a() {
                    C12744c.this.f72262b.onError("Token failed at server");
                }

                @Override
                public void onSuccess() {
                    C12744c.this.f72262b.a(this.f72263a, this.f72264b);
                }
            }

            public C12744c(final Context val$context, final N val$listener) {
                this.f72261a = val$context;
                this.f72262b = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72262b.onError(result);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                JSONObject f10 = hd.c.f(hd.c.h(result), "values");
                String g10 = hd.c.g(f10, C13183b.f85996h);
                String g11 = hd.c.g(f10, "userid");
                String g12 = hd.c.g(f10, "userName");
                C8.a aVar = W7.b.f27306f;
                aVar.f2461d.g0(g10);
                aVar.f2461d.i0(g12);
                aVar.f2461d.h0(g11);
                aVar.f2461d.d0(true);
                aVar.f2461d.f0(false);
                aVar.f2461d.e0(true, this.f72261a, false);
                aVar.f2461d.k0(new a(g10, g11));
            }
        }

        public class C12745d extends HashMap<String, String> {

            public final String f72266b;

            public final String f72267c;

            public C12745d(final String val$idToken, final String val$displayName) {
                this.f72266b = val$idToken;
                this.f72267c = val$displayName;
                put("idToken", val$idToken);
                put(ContactsContract.Directory.DISPLAY_NAME, val$displayName);
            }
        }

        public class C12746e implements hd.d {

            public final Context f72268a;

            public final N f72269b;

            public class a implements UserController.g {

                public final String f72270a;

                public final String f72271b;

                public a(final String val$token, final String val$userid) {
                    this.f72270a = val$token;
                    this.f72271b = val$userid;
                }

                @Override
                public void a() {
                    C12746e.this.f72269b.onError("Token failed at server");
                }

                @Override
                public void onSuccess() {
                    C12746e.this.f72269b.a(this.f72270a, this.f72271b);
                }
            }

            public C12746e(final Context val$context, final N val$listener) {
                this.f72268a = val$context;
                this.f72269b = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72269b.onError(result);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                JSONObject f10 = hd.c.f(hd.c.h(result), "values");
                String g10 = hd.c.g(f10, C13183b.f85996h);
                String g11 = hd.c.g(f10, "userid");
                String g12 = hd.c.g(f10, "userName");
                C8.a aVar = W7.b.f27306f;
                aVar.f2461d.g0(g10);
                aVar.f2461d.i0(g12);
                aVar.f2461d.h0(g11);
                aVar.f2461d.d0(true);
                aVar.f2461d.f0(false);
                aVar.f2461d.e0(true, this.f72268a, false);
                aVar.f2461d.k0(new a(g10, g11));
            }
        }

        public class C12747f extends HashMap<String, String> {

            public final String f72273b;

            public final String f72274c;

            public C12747f(final String val$idToken, final String val$displayName) {
                this.f72273b = val$idToken;
                this.f72274c = val$displayName;
                put("idToken", val$idToken);
                put(ContactsContract.Directory.DISPLAY_NAME, val$displayName);
            }
        }

        public class C12748g implements hd.d {

            public final L f72275a;

            public C12748g(final L val$listener) {
                this.f72275a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72275a.onError(result);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                if ("true".equals(hd.c.g(hd.c.f(hd.c.h(result), "values"), "activeToken"))) {
                    this.f72275a.isActive();
                } else {
                    this.f72275a.a();
                }
            }
        }

        public class C12749h extends HashMap<String, String> {
        }

        public class C1156i implements hd.d {

            public final I f72276a;

            public C1156i(final I val$listener) {
                this.f72276a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72276a.onError(result);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                if ("true".equals(hd.c.g(hd.c.f(hd.c.h(result), "values"), "activeLogin"))) {
                    this.f72276a.a();
                } else {
                    this.f72276a.b();
                }
            }
        }

        public class C12750j extends HashMap<String, String> {

            public final String f72277b;

            public final String f72278c;

            public C12750j(final String val$username, final String val$password) {
                this.f72277b = val$username;
                this.f72278c = val$password;
                put(View.AUTOFILL_HINT_USERNAME, val$username);
                put("password", val$password);
            }
        }

        public class C12751k extends HashMap<String, String> {
            public C12751k() {
                put(C13183b.f85996h, W7.b.f27306f.f2461d.H());
            }
        }

        public class C12752l implements hd.d {

            public final H f72279a;

            public class a implements j.a {
                public a() {
                }

                @Override
                public void a(String str) {
                    C12752l.this.f72279a.a(str);
                }
            }

            public C12752l(final H val$listener) {
                this.f72279a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                if (j.c(result)) {
                    this.f72279a.b();
                } else {
                    if (j.a(result, new a())) {
                        return;
                    }
                    this.f72279a.a(hd.c.g(hd.c.h(result), "info"));
                }
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                hd.c.h(result);
                this.f72279a.onSuccess();
            }
        }

        public class C12753m extends HashMap<String, String> {

            public final String f72281b;

            public C12753m(final String val$email) {
                this.f72281b = val$email;
                put("email", val$email);
            }
        }

        public class C12754n implements hd.d {

            public final H f72282a;

            public C12754n(final H val$listener) {
                this.f72282a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72282a.a(result);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                this.f72282a.onSuccess();
            }
        }

        public class C12755o extends HashMap<String, String> {

            public final int f72283b;

            public C12755o(final int val$friendID) {
                this.f72283b = val$friendID;
                put("friendID", "" + val$friendID);
            }
        }

        public class p implements hd.d {

            public final H f72284a;

            public p(final H val$listener) {
                this.f72284a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72284a.a(result);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                this.f72284a.onSuccess();
            }
        }

        public class C1157q extends HashMap<String, String> {

            public final int f72285b;

            public C1157q(final int val$friendID) {
                this.f72285b = val$friendID;
                put("friendID", "" + val$friendID);
            }
        }

        public class r implements hd.d {

            public final H f72286a;

            public r(final H val$listener) {
                this.f72286a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72286a.a(result);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                this.f72286a.onSuccess();
            }
        }

        public class s extends HashMap<String, String> {

            public final int f72287b;

            public s(final int val$friendID) {
                this.f72287b = val$friendID;
                put("friendID", "" + val$friendID);
            }
        }

        public class t implements hd.d {

            public final H f72288a;

            public t(final H val$listener) {
                this.f72288a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72288a.a(result);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                this.f72288a.onSuccess();
            }
        }

        public class u extends HashMap<String, String> {

            public final int f72289b;

            public u(final int val$friendID) {
                this.f72289b = val$friendID;
                put("friendID", "" + val$friendID);
            }
        }

        public class v implements hd.d {

            public final M f72290a;

            public v(final M val$listener) {
                this.f72290a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72290a.onError(result);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                JSONObject f10 = hd.c.f(hd.c.h(result), "values");
                this.f72290a.a("true".equalsIgnoreCase(hd.c.g(f10, "canClaim")), "true".equalsIgnoreCase(hd.c.g(f10, "isVipDay")), Nc.b.w1(hd.c.g(f10, "days")));
            }
        }

        public class w implements hd.d {

            public final H f72291a;

            public w(final H val$listener) {
                this.f72291a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72291a.a(result);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                this.f72291a.onSuccess();
            }
        }

        public class x extends HashMap<String, String> {

            public final int f72292b;

            public x(final int val$friendID) {
                this.f72292b = val$friendID;
                put("friendID", "" + val$friendID);
            }
        }

        public class y implements hd.d {

            public final H f72293a;

            public y(final H val$listener) {
                this.f72293a = val$listener;
            }

            @Override
            public void a(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, "Error:" + result);
                }
                this.f72293a.a(result);
            }

            @Override
            public void b(String result) {
                if (q.f72153a) {
                    Log.e(q.f72154b, result);
                }
                this.f72293a.onSuccess();
            }
        }

        public class z extends HashMap<String, String> {

            public final int f72294b;

            public z(final int val$friendID) {
                this.f72294b = val$friendID;
                put("friendID", "" + val$friendID);
            }
        }

        public static void a(int friendID, H listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new p(listener));
            d();
            C1157q c1157q = new C1157q(friendID);
            c1157q.putAll(f());
            c1157q.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "approveUserFriend"), c1157q, t10, true));
        }

        public static void b(int friendID, H listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new t(listener));
            d();
            u uVar = new u(friendID);
            uVar.putAll(f());
            uVar.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "blockUserFriend"), uVar, t10, true));
        }

        public static void c(H listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new B(listener));
            C c10 = new C();
            c10.putAll(f());
            c10.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "claimDailyReward"), c10, t10, !q.f72153a));
        }

        public static O d() {
            UserController userController;
            C8.a aVar = W7.b.f27306f;
            if (aVar == null || (userController = aVar.f2461d) == null || !userController.Q()) {
                return null;
            }
            aVar.f2461d.D(N7.c.t());
            O o10 = new O();
            o10.f72248a = aVar.f2461d.L();
            o10.f72249b = aVar.f2461d.T();
            o10.f72250c = aVar.f2461d.K();
            o10.f72251d = Nc.b.w1(aVar.f2461d.z());
            o10.f72252e = aVar.f2461d.H();
            return o10;
        }

        public static void e(M listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new v(listener));
            A a10 = new A();
            a10.putAll(f());
            a10.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "getLoginDays"), a10, t10, !q.f72153a));
        }

        public static HashMap<String, String> f() {
            N7.c.t();
            return !k() ? new HashMap<>() : new C12751k();
        }

        public static void g(String username, String password, I listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new C1156i(listener));
            C12750j c12750j = new C12750j(username, password);
            c12750j.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "hasActiveLogin"), c12750j, t10, !q.f72153a));
        }

        public static void h(int friendID, H listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new C12754n(listener));
            d();
            C12755o c12755o = new C12755o(friendID);
            c12755o.putAll(f());
            c12755o.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "inviteUserFriend"), c12755o, t10, true));
        }

        public static void i(J listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new D(listener));
            E e10 = new E();
            e10.putAll(f());
            e10.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "isApkLimitReached"), e10, t10, !q.f72153a));
        }

        public static void j(K listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new F(listener));
            G g10 = new G();
            g10.putAll(f());
            g10.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "isExportingAPK"), g10, t10, !q.f72153a));
        }

        public static boolean k() {
            UserController userController = W7.b.f27306f.f2461d;
            return userController != null && userController.Q();
        }

        public static void l(L listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new C12748g(listener));
            C12749h c12749h = new C12749h();
            c12749h.putAll(f());
            c12749h.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "isTokenActive"), c12749h, t10, !q.f72153a));
        }

        public static void m(String username, String password, N listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new C12742a(username, t10, listener));
            C12743b c12743b = new C12743b(username, password);
            c12743b.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", FirebaseAnalytics.c.f67647m), c12743b, t10, !q.f72153a));
        }

        public static void n(String idToken, String displayName, N listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new C12744c(t10, listener));
            C12745d c12745d = new C12745d(idToken, displayName);
            c12745d.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "loginFromGoogle"), c12745d, t10, !q.f72153a));
        }

        public static void o(String email, H listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new C12752l(listener));
            C12753m c12753m = new C12753m(email);
            c12753m.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "recoveryPassword"), c12753m, t10, !q.f72153a));
        }

        public static void p(int friendID, H listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new r(listener));
            d();
            s sVar = new s(friendID);
            sVar.putAll(f());
            sVar.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "recuseFriendRequest"), sVar, t10, true));
        }

        public static void q(int friendID, H listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new w(listener));
            d();
            x xVar = new x(friendID);
            xVar.putAll(f());
            xVar.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "reportUserFriend"), xVar, t10, true));
        }

        public static void r(String idToken, String displayName, N listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new C12746e(t10, listener));
            C12747f c12747f = new C12747f(idToken, displayName);
            c12747f.putAll(f());
            c12747f.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "syncWithGoogle"), c12747f, t10, !q.f72153a));
        }

        public static void s(int friendID, H listener) {
            Context t10 = N7.c.t();
            C13056c c13056c = new C13056c(new y(listener));
            d();
            z zVar = new z(friendID);
            zVar.putAll(f());
            zVar.putAll(g.a());
            c13056c.d(new hd.e(g.b("users/", "unfriendUser"), zVar, t10, true));
        }
    }

    public static class j {

        public interface a {
            void a(String str);
        }

        public static boolean a(String error, a listener) {
            if (!error.contains("@error@HTTP-CODE:")) {
                JSONObject h10 = hd.c.h(error);
                hd.c.g(h10, "status");
                if (!hd.c.g(h10, "info").equalsIgnoreCase("Invalid user token")) {
                    return false;
                }
                W7.b.f27306f.f2461d.V();
                listener.a(new C3867a("Your login is invalid, please login again..", "Seu login \u00e9 invalido, por favor entre novamente.").toString());
                return true;
            }
            String replace = error.replace("@error@HTTP-CODE:", "");
            int x12 = Nc.b.x1(replace, 0);
            if (x12 > 0) {
                if (x12 == 500) {
                    listener.a("Server failed to process request.");
                    return true;
                }
                for (Field field : HttpURLConnection.class.getDeclaredFields()) {
                    if (field.getType() == Integer.TYPE && Modifier.isStatic(field.getModifiers())) {
                        try {
                            if (field.getInt(null) == x12) {
                                replace = field.getName();
                                break;
                            }
                            continue;
                        } catch (IllegalAccessException e10) {
                            e10.printStackTrace();
                        }
                    }
                }
            }
            listener.a("Invalid connection: " + replace);
            return true;
        }

        public static boolean b(String error, a listener) {
            if (!error.contains("@error@HTTP-CODE:")) {
                return false;
            }
            String replace = error.replace("@error@HTTP-CODE:", "");
            int x12 = Nc.b.x1(replace, 0);
            if (x12 > 0) {
                if (x12 == 500) {
                    listener.a("Server failed to process request.");
                    return true;
                }
                for (Field field : HttpURLConnection.class.getDeclaredFields()) {
                    if (field.getType() == Integer.TYPE && Modifier.isStatic(field.getModifiers())) {
                        try {
                            if (field.getInt(null) == x12) {
                                replace = field.getName();
                                break;
                            }
                            continue;
                        } catch (IllegalAccessException e10) {
                            e10.printStackTrace();
                        }
                    }
                }
            }
            listener.a("Invalid connection: " + replace);
            return true;
        }

        public static boolean c(String result) {
            return result.equalsIgnoreCase("@no_ethernet@") || result.equalsIgnoreCase("invalid SSL") || (result.contains("Traffic to this domain") && result.contains("without SSL is not permitted by android manifest!"));
        }

        public static boolean d(String errorMessage) {
            return errorMessage.equalsIgnoreCase("not enough money");
        }

        public static boolean e(String errorMessage) {
            return errorMessage.equalsIgnoreCase("not enough funds");
        }

        public static boolean f(String errorMessage) {
            return errorMessage.equalsIgnoreCase("Invalid user token") || errorMessage.equalsIgnoreCase("Product is not free, please log-in before buying!");
        }
    }

    static {
        if (C15377a.f109719g.booleanValue()) {
            f72153a = false;
        }
        f72154b = q.class.getSimpleName();
    }
}
