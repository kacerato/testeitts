package com.jme3.shader.plugins;

import com.jme3.asset.AssetInfo;
import com.jme3.asset.AssetKey;
import com.jme3.asset.AssetLoadException;
import com.jme3.asset.AssetLoader;
import com.jme3.asset.AssetManager;
import com.jme3.asset.cache.AssetCache;
import gf.C13356a;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.internal.core.JavadocConstants;

public class GLSLLoader implements AssetLoader {
    private AssetManager assetManager;
    private final Map<String, ShaderDependencyNode> dependCache = new HashMap();

    public class ShaderDependencyKey extends AssetKey<Reader> {
        public ShaderDependencyKey(String str) {
            super(str);
        }

        @Override
        public Class<? extends AssetCache> getCacheType() {
            return null;
        }
    }

    private ShaderDependencyNode loadNode(Reader reader, String str) {
        ShaderDependencyNode shaderDependencyNode = new ShaderDependencyNode(str);
        StringBuilder sb2 = new StringBuilder();
        StringBuilder sb3 = new StringBuilder();
        try {
            BufferedReader bufferedReader = new BufferedReader(reader);
            try {
                if (!str.equals("[main]")) {
                    sb2.append("// -- begin import ");
                    sb2.append(str);
                    sb2.append(" --\n");
                }
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        if (!str.equals("[main]")) {
                            sb2.append("// -- end import ");
                            sb2.append(str);
                            sb2.append(" --\n");
                        }
                        bufferedReader.close();
                        shaderDependencyNode.setSource(sb2.toString());
                        shaderDependencyNode.setExtensions(sb3.toString());
                        this.dependCache.put(str, shaderDependencyNode);
                        return shaderDependencyNode;
                    }
                    String trim = readLine.trim();
                    if (trim.startsWith("#import ")) {
                        String trim2 = trim.substring(8).trim();
                        if (trim2.startsWith(JavadocConstants.ANCHOR_PREFIX_END) && trim2.endsWith(JavadocConstants.ANCHOR_PREFIX_END) && trim2.length() > 3) {
                            String substring = trim2.substring(1, trim2.length() - 1);
                            if (substring.equals(str)) {
                                throw new IOException("Node depends on itself.");
                            }
                            ShaderDependencyNode shaderDependencyNode2 = this.dependCache.get(substring);
                            if (shaderDependencyNode2 == null) {
                                shaderDependencyNode2 = loadNode((Reader) this.assetManager.loadAsset(new ShaderDependencyKey(substring)), substring);
                            }
                            shaderDependencyNode.addDependency(sb2.length(), shaderDependencyNode2);
                        }
                    } else if (trim.startsWith("#extension ")) {
                        sb3.append(readLine);
                        sb3.append('\n');
                    } else if (trim.startsWith("#version ")) {
                        sb3.append(readLine);
                        sb3.append('\n');
                    } else {
                        sb2.append(readLine);
                        sb2.append('\n');
                    }
                }
            } finally {
            }
        } catch (IOException e10) {
            throw new AssetLoadException("Failed to load shader node: " + str, e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private String resolveDependencies(ShaderDependencyNode shaderDependencyNode, Set<ShaderDependencyNode> set, StringBuilder sb2, boolean z10) {
        if (set.contains(shaderDependencyNode)) {
            return "// " + shaderDependencyNode.getName() + " was already injected at the top.\n";
        }
        set.add(shaderDependencyNode);
        if (!shaderDependencyNode.getExtensions().isEmpty()) {
            sb2.append(shaderDependencyNode.getExtensions());
        }
        if (shaderDependencyNode.getDependencies().isEmpty()) {
            return shaderDependencyNode.getSource();
        }
        if (!z10) {
            Iterator<ShaderDependencyNode> it = shaderDependencyNode.getDependencies().iterator();
            while (it.hasNext()) {
                resolveDependencies(it.next(), set, sb2, z10);
            }
            return null;
        }
        StringBuilder sb3 = new StringBuilder(shaderDependencyNode.getSource());
        ArrayList arrayList = new ArrayList();
        Iterator<ShaderDependencyNode> it2 = shaderDependencyNode.getDependencies().iterator();
        while (it2.hasNext()) {
            arrayList.add(resolveDependencies(it2.next(), set, sb2, z10));
        }
        List<Integer> dependencyInjectIndices = shaderDependencyNode.getDependencyInjectIndices();
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            sb3.insert(dependencyInjectIndices.get(size).intValue(), (String) arrayList.get(size));
        }
        return sb3.toString();
    }

    @Override
    public Object load(AssetInfo assetInfo) throws IOException {
        this.assetManager = assetInfo.getManager();
        Reader inputStreamReader = new InputStreamReader(C13356a.a(assetInfo.openStream()));
        boolean isInjectDependencies = assetInfo.getKey() instanceof ShaderAssetKey ? ((ShaderAssetKey) assetInfo.getKey()).isInjectDependencies() : true;
        if (assetInfo.getKey().getExtension().equals("glsllib") || assetInfo.getKey().getExtension().equals("glsl")) {
            return inputStreamReader;
        }
        ShaderDependencyNode loadNode = loadNode(inputStreamReader, "[main]");
        StringBuilder sb2 = new StringBuilder();
        if (isInjectDependencies) {
            sb2.append(resolveDependencies(loadNode, new HashSet<>(), sb2, isInjectDependencies));
            this.dependCache.clear();
            return sb2.toString();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        HashSet hashSet = new HashSet();
        sb2.append(resolveDependencies(loadNode, hashSet, sb2, isInjectDependencies));
        linkedHashMap.put("[main]", sb2.toString());
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            ShaderDependencyNode shaderDependencyNode = (ShaderDependencyNode) it.next();
            linkedHashMap.put(shaderDependencyNode.getName(), shaderDependencyNode.getSource());
        }
        this.dependCache.clear();
        return linkedHashMap;
    }
}
