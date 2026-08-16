package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import Ic.C2635n;
import com.google.android.filament.filamat.MaterialBuilder;
import com.google.gson.Gson;
import com.google.gson.JsonSyntaxException;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import id.C13696a;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.lang.constant.ConstantDescs;
import java.nio.charset.StandardCharsets;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class ShaderGraphDiskCache {

    public static final int f81299a = 2;

    public static final boolean f81300b = true;

    public static final boolean f81301c = true;

    public static class CompiledFile {

        @Expose
        String fragmentCode;

        @Expose
        List<ParamRecord> params;

        @Expose
        List<SamplerRecord> samplers;

        @Expose
        int version;

        @Expose
        String vertexCode;

        public CompiledFile() {
        }
    }

    public static class ParamRecord {

        @Expose
        String name;

        @Expose
        String precision;

        @Expose
        String type;

        public ParamRecord() {
        }
    }

    public static class SamplerRecord {

        @Expose
        String format;

        @Expose
        String name;

        @Expose
        String precision;

        @Expose
        String type;

        public SamplerRecord() {
        }
    }

    public static File b(String base, String fallbackPrefix, String extension) {
        File h10 = h();
        if (h10 == null) {
            return null;
        }
        if (base == null || base.isEmpty()) {
            base = fallbackPrefix + ConstantDescs.DEFAULT_NAME + Tc.b.L();
        }
        String Q10 = Tc.b.Q(base, ConstantDescs.DEFAULT_NAME);
        if (Q10 != null && !Q10.isEmpty()) {
            fallbackPrefix = Q10;
        }
        return new File(h10, fallbackPrefix + ConstantDescs.DEFAULT_NAME + Math.abs(base.hashCode()) + extension);
    }

    public static void c() {
        final File file = new File(e());
        if (file.exists()) {
            new Thread(new Runnable() {
                @Override
                public final void run() {
                    ShaderGraphDiskCache.l(File.this);
                }
            }).start();
        }
    }

    public static Set<String> d(String code) {
        HashSet hashSet = new HashSet();
        if (code != null && !code.isEmpty()) {
            Matcher matcher = Pattern.compile("\\bmaterialParams[_\\.]([A-Za-z0-9_]+)\\b").matcher(code);
            while (matcher.find()) {
                String group = matcher.group(1);
                if (group != null && !group.isEmpty()) {
                    hashSet.add(group);
                }
            }
        }
        return hashSet;
    }

    public static String e() {
        if (com.itsmagic.engine.Core.Components.ProjectController.a.d0()) {
            return com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/_VULKAN/";
        }
        return W7.b.f27306f.f2458a.f() + "/vulkan/";
    }

    public static File f(Material material) {
        String sb2;
        if (!i.f81350b) {
            return null;
        }
        if (material == null || material.getFile() == null || material.getFile().isEmpty()) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("material_");
            sb3.append(material != null ? Long.valueOf(material.getLongId()) : Tc.b.L());
            sb2 = sb3.toString();
        } else {
            sb2 = material.getFile();
        }
        return b(sb2, "material", ".txt");
    }

    public static File g(String graphFilePath) {
        if (!i.f81350b) {
            return null;
        }
        if (graphFilePath == null || graphFilePath.isEmpty()) {
            graphFilePath = "graph_" + Tc.b.L();
        }
        return b(graphFilePath, "graph", ".txt");
    }

    public static File h() {
        String e10 = e();
        if (e10 == null || e10.isEmpty()) {
            return null;
        }
        return new File(e10 + "/Graph/");
    }

    public static File i(Material material) {
        String sb2;
        if (material == null || material.getFile() == null || material.getFile().isEmpty()) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("material_");
            sb3.append(material != null ? Long.valueOf(material.getLongId()) : Tc.b.L());
            sb2 = sb3.toString();
        } else {
            sb2 = material.getFile();
        }
        return b(sb2, "material", ".mgsc");
    }

    public static File j(String graphFilePath) {
        if (graphFilePath == null || graphFilePath.isEmpty()) {
            graphFilePath = "graph_" + Tc.b.L();
        }
        return b(graphFilePath, "graph", ".mgsc");
    }

    public static boolean k(f compilation) {
        String str;
        if (compilation == null || (str = compilation.f81316b) == null || str.isEmpty() || compilation.f81315a == null) {
            return false;
        }
        Set<String> d10 = d(compilation.f81316b);
        if (d10.isEmpty()) {
            return true;
        }
        HashSet hashSet = new HashSet();
        List<ec.f> list = compilation.f81317c;
        if (list != null) {
            for (ec.f fVar : list) {
                if (fVar != null && fVar.a() != null) {
                    hashSet.add(fVar.a());
                }
            }
        }
        List<ec.g> list2 = compilation.f81318d;
        if (list2 != null) {
            for (ec.g gVar : list2) {
                if (gVar != null && gVar.b() != null) {
                    hashSet.add(gVar.b());
                }
            }
        }
        return hashSet.containsAll(d10);
    }

    public static void l(File file) {
        try {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2 != null && !"Graph".equalsIgnoreCase(file2.getName())) {
                        try {
                            C13696a.g(file2);
                        } catch (Exception unused) {
                        }
                    }
                }
            }
            File file3 = new File(file, "av.bin");
            if (!file3.getParentFile().exists()) {
                file3.getParentFile().mkdirs();
            }
            x(file3, N7.c.p());
        } catch (Exception unused2) {
        }
    }

    public static byte[] m(File file) {
        if (file != null && file.exists()) {
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = bufferedInputStream.read(bArr);
                        if (read < 0) {
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            bufferedInputStream.close();
                            return byteArray;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                } finally {
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static f n(Material material) {
        File f10;
        String r10;
        String str;
        if (i.f81350b && (f10 = f(material)) != null && f10.exists() && (r10 = r(f10)) != null && !r10.isEmpty()) {
            try {
                CompiledFile compiledFile = (CompiledFile) X7.a.m().fromJson(r10, CompiledFile.class);
                if (compiledFile == null || compiledFile.vertexCode == null || compiledFile.fragmentCode == null || compiledFile.version != 2) {
                    return null;
                }
                f fVar = new f();
                fVar.f81315a = compiledFile.vertexCode;
                fVar.f81316b = compiledFile.fragmentCode;
                fVar.f81317c = new SteppedArrayList();
                fVar.f81318d = new SteppedArrayList();
                List<ParamRecord> list = compiledFile.params;
                if (list != null) {
                    for (ParamRecord paramRecord : list) {
                        if (paramRecord != null && paramRecord.name != null) {
                            String str2 = paramRecord.type;
                            if (str2 != null) {
                                try {
                                    MaterialBuilder.r valueOf = MaterialBuilder.r.valueOf(str2);
                                    String str3 = paramRecord.precision;
                                    fVar.f81317c.add(new ec.f(valueOf, paramRecord.name, str3 != null ? MaterialBuilder.g.valueOf(str3) : MaterialBuilder.g.DEFAULT));
                                } catch (Exception unused) {
                                }
                            }
                            while (r1.hasNext()) {
                            }
                        }
                    }
                }
                List<SamplerRecord> list2 = compiledFile.samplers;
                if (list2 != null) {
                    for (SamplerRecord samplerRecord : list2) {
                        if (samplerRecord != null && samplerRecord.name != null && (str = samplerRecord.type) != null) {
                            if (samplerRecord.format != null) {
                                try {
                                    MaterialBuilder.m valueOf2 = MaterialBuilder.m.valueOf(str);
                                    MaterialBuilder.l valueOf3 = MaterialBuilder.l.valueOf(samplerRecord.format);
                                    String str4 = samplerRecord.precision;
                                    fVar.f81318d.add(new ec.g(valueOf2, valueOf3, str4 != null ? MaterialBuilder.g.valueOf(str4) : MaterialBuilder.g.DEFAULT, samplerRecord.name));
                                } catch (Exception unused2) {
                                }
                            }
                            while (r7.hasNext()) {
                            }
                        }
                    }
                }
                return fVar;
            } catch (JsonSyntaxException e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0069  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00a4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static f o(String graphFilePath) {
        File g10;
        String r10;
        String str;
        if (i.f81350b && (g10 = g(graphFilePath)) != null && g10.exists() && (r10 = r(g10)) != null && !r10.isEmpty()) {
            try {
                CompiledFile compiledFile = (CompiledFile) X7.a.m().fromJson(r10, CompiledFile.class);
                if (compiledFile == null || compiledFile.vertexCode == null || compiledFile.fragmentCode == null || compiledFile.version != 2) {
                    return null;
                }
                f fVar = new f();
                fVar.f81315a = compiledFile.vertexCode;
                fVar.f81316b = compiledFile.fragmentCode;
                fVar.f81317c = new SteppedArrayList();
                fVar.f81318d = new SteppedArrayList();
                List<ParamRecord> list = compiledFile.params;
                if (list != null) {
                    for (ParamRecord paramRecord : list) {
                        if (paramRecord != null && paramRecord.name != null) {
                            String str2 = paramRecord.type;
                            if (str2 != null) {
                                try {
                                    MaterialBuilder.r valueOf = MaterialBuilder.r.valueOf(str2);
                                    String str3 = paramRecord.precision;
                                    fVar.f81317c.add(new ec.f(valueOf, paramRecord.name, str3 != null ? MaterialBuilder.g.valueOf(str3) : MaterialBuilder.g.DEFAULT));
                                } catch (Exception unused) {
                                }
                            }
                            while (r1.hasNext()) {
                            }
                        }
                    }
                }
                List<SamplerRecord> list2 = compiledFile.samplers;
                if (list2 != null) {
                    for (SamplerRecord samplerRecord : list2) {
                        if (samplerRecord != null && samplerRecord.name != null && (str = samplerRecord.type) != null) {
                            if (samplerRecord.format != null) {
                                try {
                                    MaterialBuilder.m valueOf2 = MaterialBuilder.m.valueOf(str);
                                    MaterialBuilder.l valueOf3 = MaterialBuilder.l.valueOf(samplerRecord.format);
                                    String str4 = samplerRecord.precision;
                                    fVar.f81318d.add(new ec.g(valueOf2, valueOf3, str4 != null ? MaterialBuilder.g.valueOf(str4) : MaterialBuilder.g.DEFAULT, samplerRecord.name));
                                } catch (Exception unused2) {
                                }
                            }
                            while (r7.hasNext()) {
                            }
                        }
                    }
                }
                return fVar;
            } catch (JsonSyntaxException e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static ShaderGraphData p(Material material) {
        byte[] m10;
        String c10;
        File i10 = i(material);
        if (i10 != null && i10.exists() && (m10 = m(i10)) != null && m10.length != 0 && (c10 = C2635n.c(m10)) != null && !c10.isEmpty()) {
            try {
                return (ShaderGraphData) X7.a.m().fromJson(c10, ShaderGraphData.class);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static ShaderGraphData q(String graphFilePath) {
        byte[] m10;
        String c10;
        File j10 = j(graphFilePath);
        if (j10 != null && j10.exists() && (m10 = m(j10)) != null && m10.length != 0 && (c10 = C2635n.c(m10)) != null && !c10.isEmpty()) {
            try {
                return (ShaderGraphData) X7.a.m().fromJson(c10, ShaderGraphData.class);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static String r(File file) {
        if (file != null && file.exists()) {
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(file));
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int read = bufferedInputStream.read(bArr);
                        if (read < 0) {
                            String byteArrayOutputStream2 = byteArrayOutputStream.toString(StandardCharsets.UTF_8.name());
                            bufferedInputStream.close();
                            return byteArrayOutputStream2;
                        }
                        byteArrayOutputStream.write(bArr, 0, read);
                    }
                } finally {
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public static void s(File file, byte[] bytes) {
        if (file == null || bytes == null) {
            return;
        }
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
            try {
                bufferedOutputStream.write(bytes);
                bufferedOutputStream.close();
            } finally {
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void t(Material material, f compilation) {
        File f10;
        if (!i.f81350b || compilation == null || (f10 = f(material)) == null) {
            return;
        }
        File parentFile = f10.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        CompiledFile compiledFile = new CompiledFile();
        compiledFile.version = 2;
        compiledFile.vertexCode = compilation.f81315a;
        compiledFile.fragmentCode = compilation.f81316b;
        compiledFile.params = new SteppedArrayList();
        compiledFile.samplers = new SteppedArrayList();
        List<ec.f> list = compilation.f81317c;
        if (list != null) {
            for (ec.f fVar : list) {
                if (fVar != null) {
                    ParamRecord paramRecord = new ParamRecord();
                    paramRecord.name = fVar.a();
                    paramRecord.type = fVar.d() != null ? fVar.d().name() : null;
                    paramRecord.precision = fVar.b() != null ? fVar.b().name() : null;
                    compiledFile.params.add(paramRecord);
                }
            }
        }
        List<ec.g> list2 = compilation.f81318d;
        if (list2 != null) {
            for (ec.g gVar : list2) {
                if (gVar != null) {
                    SamplerRecord samplerRecord = new SamplerRecord();
                    samplerRecord.name = gVar.b();
                    samplerRecord.type = gVar.d() != null ? gVar.d().name() : null;
                    samplerRecord.format = gVar.a() != null ? gVar.a().name() : null;
                    samplerRecord.precision = gVar.c() != null ? gVar.c().name() : null;
                    compiledFile.samplers.add(samplerRecord);
                }
            }
        }
        x(f10, X7.a.m().toJson(compiledFile));
    }

    public static void u(String graphFilePath, f compilation) {
        File g10;
        if (!i.f81350b || compilation == null || (g10 = g(graphFilePath)) == null) {
            return;
        }
        File parentFile = g10.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        CompiledFile compiledFile = new CompiledFile();
        compiledFile.version = 2;
        compiledFile.vertexCode = compilation.f81315a;
        compiledFile.fragmentCode = compilation.f81316b;
        compiledFile.params = new SteppedArrayList();
        compiledFile.samplers = new SteppedArrayList();
        List<ec.f> list = compilation.f81317c;
        if (list != null) {
            for (ec.f fVar : list) {
                if (fVar != null) {
                    ParamRecord paramRecord = new ParamRecord();
                    paramRecord.name = fVar.a();
                    paramRecord.type = fVar.d() != null ? fVar.d().name() : null;
                    paramRecord.precision = fVar.b() != null ? fVar.b().name() : null;
                    compiledFile.params.add(paramRecord);
                }
            }
        }
        List<ec.g> list2 = compilation.f81318d;
        if (list2 != null) {
            for (ec.g gVar : list2) {
                if (gVar != null) {
                    SamplerRecord samplerRecord = new SamplerRecord();
                    samplerRecord.name = gVar.b();
                    samplerRecord.type = gVar.d() != null ? gVar.d().name() : null;
                    samplerRecord.format = gVar.a() != null ? gVar.a().name() : null;
                    samplerRecord.precision = gVar.c() != null ? gVar.c().name() : null;
                    compiledFile.samplers.add(samplerRecord);
                }
            }
        }
        x(g10, X7.a.m().toJson(compiledFile));
    }

    public static void v(Material material, ShaderGraphData graphData) {
        File i10;
        if (graphData == null || (i10 = i(material)) == null) {
            return;
        }
        File parentFile = i10.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        Gson m10 = X7.a.m();
        graphData.q();
        s(i10, C2635n.a(m10.toJson(graphData)));
    }

    public static void w(String graphFilePath, ShaderGraphData graphData) {
        File j10;
        if (graphData == null || (j10 = j(graphFilePath)) == null) {
            return;
        }
        File parentFile = j10.getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        Gson m10 = X7.a.m();
        graphData.q();
        s(j10, C2635n.a(m10.toJson(graphData)));
    }

    public static void x(File file, String text) {
        if (file == null || text == null) {
            return;
        }
        try {
            BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file));
            try {
                bufferedOutputStream.write(text.getBytes(StandardCharsets.UTF_8));
                bufferedOutputStream.close();
            } finally {
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
