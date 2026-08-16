package com.itsmagic.engine.Engines.Graphics.ShaderGraph;

import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawCubemapNode;
import com.itsmagic.engine.Engines.Graphics.ShaderGraph.Nodes.RawTextureNode;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ic.N0;
import java.util.HashSet;
import java.util.List;

public class A {

    public static final String f81159a = "Node graph";

    public static boolean a(ShaderGraphData data) {
        return d(data) < 8;
    }

    public static boolean b(ShaderGraphData data, String oldSamplerKey, String newSamplerKey) {
        List<ShaderGraphInputDefault> list;
        if (data == null || newSamplerKey == null || newSamplerKey.isEmpty()) {
            return true;
        }
        if (oldSamplerKey != null && oldSamplerKey.equals(newSamplerKey)) {
            return true;
        }
        data.e();
        HashSet hashSet = new HashSet();
        List<ShaderGraphNode> list2 = data.f81295a;
        if (list2 != null) {
            for (ShaderGraphNode shaderGraphNode : list2) {
                if (shaderGraphNode instanceof RawTextureNode) {
                    hashSet.add(m(((RawTextureNode) shaderGraphNode).textureFile));
                } else if (shaderGraphNode instanceof RawCubemapNode) {
                    hashSet.add(f(((RawCubemapNode) shaderGraphNode).cubemapFile));
                }
                if (shaderGraphNode != null && (list = shaderGraphNode.inputDefaults) != null) {
                    for (ShaderGraphInputDefault shaderGraphInputDefault : list) {
                        if (shaderGraphInputDefault != null) {
                            if (shaderGraphInputDefault.type == C.TEXTURE) {
                                hashSet.add(m(shaderGraphInputDefault.fileIPP));
                            }
                            if (shaderGraphInputDefault.type == C.CUBEMAP) {
                                hashSet.add(f(shaderGraphInputDefault.fileIPP));
                            }
                        }
                    }
                }
            }
        }
        if (oldSamplerKey != null) {
            hashSet.remove(oldSamplerKey);
        }
        return hashSet.contains(newSamplerKey) || hashSet.size() < 8;
    }

    public static boolean c(ShaderGraphData data, String samplerKey) {
        List<ShaderGraphInputDefault> list;
        if (samplerKey == null || samplerKey.isEmpty()) {
            return a(data);
        }
        if (data == null) {
            return true;
        }
        data.e();
        HashSet hashSet = new HashSet();
        List<ShaderGraphNode> list2 = data.f81295a;
        if (list2 != null) {
            for (ShaderGraphNode shaderGraphNode : list2) {
                if (shaderGraphNode instanceof RawTextureNode) {
                    hashSet.add(m(((RawTextureNode) shaderGraphNode).textureFile));
                } else if (shaderGraphNode instanceof RawCubemapNode) {
                    hashSet.add(f(((RawCubemapNode) shaderGraphNode).cubemapFile));
                }
                if (shaderGraphNode != null && (list = shaderGraphNode.inputDefaults) != null) {
                    for (ShaderGraphInputDefault shaderGraphInputDefault : list) {
                        if (shaderGraphInputDefault != null) {
                            if (shaderGraphInputDefault.type == C.TEXTURE) {
                                hashSet.add(m(shaderGraphInputDefault.fileIPP));
                            }
                            if (shaderGraphInputDefault.type == C.CUBEMAP) {
                                hashSet.add(f(shaderGraphInputDefault.fileIPP));
                            }
                        }
                    }
                }
            }
        }
        return hashSet.contains(samplerKey) || hashSet.size() < 8;
    }

    public static int d(ShaderGraphData data) {
        List<ShaderGraphAttribute> list;
        List<ShaderGraphInputDefault> list2;
        if (data == null) {
            return 0;
        }
        data.e();
        HashSet hashSet = new HashSet();
        List<ShaderGraphNode> list3 = data.f81295a;
        if (list3 != null) {
            for (ShaderGraphNode shaderGraphNode : list3) {
                if (shaderGraphNode instanceof RawTextureNode) {
                    String str = ((RawTextureNode) shaderGraphNode).textureFile;
                    if (str == null) {
                        str = "";
                    }
                    hashSet.add(m(str));
                } else if (shaderGraphNode instanceof RawCubemapNode) {
                    String str2 = ((RawCubemapNode) shaderGraphNode).cubemapFile;
                    if (str2 == null) {
                        str2 = "";
                    }
                    hashSet.add(f(str2));
                }
                if (shaderGraphNode != null && (list2 = shaderGraphNode.inputDefaults) != null) {
                    for (ShaderGraphInputDefault shaderGraphInputDefault : list2) {
                        if (shaderGraphInputDefault != null) {
                            C c10 = shaderGraphInputDefault.type;
                            if (c10 == C.TEXTURE) {
                                hashSet.add(m(shaderGraphInputDefault.fileIPP));
                            } else if (c10 == C.CUBEMAP) {
                                hashSet.add(f(shaderGraphInputDefault.fileIPP));
                            }
                        }
                    }
                }
            }
        }
        ShaderGraphSettings shaderGraphSettings = data.settings;
        if (shaderGraphSettings != null && (list = shaderGraphSettings.attributes) != null) {
            for (ShaderGraphAttribute shaderGraphAttribute : list) {
                if (shaderGraphAttribute != null) {
                    C c11 = shaderGraphAttribute.type;
                    if (c11 == C.TEXTURE) {
                        String str3 = shaderGraphAttribute.file;
                        if (str3 == null) {
                            str3 = "";
                        }
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("attr_tex:");
                        sb2.append(str3.isEmpty() ? shaderGraphAttribute.f81224id : shaderGraphAttribute.f81224id + b3.s.f32937c + str3);
                        hashSet.add(sb2.toString());
                    } else if (c11 == C.CUBEMAP) {
                        String str4 = shaderGraphAttribute.file;
                        if (str4 == null) {
                            str4 = "";
                        }
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("attr_cube:");
                        sb3.append(str4.isEmpty() ? shaderGraphAttribute.f81224id : shaderGraphAttribute.f81224id + b3.s.f32937c + str4);
                        hashSet.add(sb3.toString());
                    }
                }
            }
        }
        return hashSet.size();
    }

    public static ShaderGraphData e() {
        ShaderGraphData shaderGraphData = new ShaderGraphData();
        h(shaderGraphData);
        return shaderGraphData;
    }

    public static String f(String file) {
        String str;
        if (file == null) {
            file = "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("sampler:");
        if (file.isEmpty()) {
            str = "sgp_cube_0";
        } else {
            str = "sgp_cube_" + Math.abs(file.hashCode());
        }
        sb2.append(str);
        return sb2.toString();
    }

    public static ShaderGraphData g(Material material) {
        if (material == null) {
            return null;
        }
        ShaderGraphData C10 = material.C();
        if (C10 == null) {
            C10 = ShaderGraphDiskCache.p(material);
            if (C10 == null) {
                C10 = new ShaderGraphData();
            }
            material.e0(C10);
        }
        C10.e();
        h(C10);
        return C10;
    }

    public static void h(ShaderGraphData data) {
        if (data == null) {
            return;
        }
        data.e();
        if (data.h() == null) {
            ShaderGraphNode d10 = p.d(N0.f91770e);
            if (d10 == null) {
                d10 = p.d("ShaderGraphOutput");
            }
            if (d10 == null) {
                d10 = p.d("PBR_Output");
            }
            if (d10 == null) {
                d10 = p.d("PbrOutput");
            }
            if (d10 != null) {
                d10.f81310x = 300.0f;
                d10.f81311y = 200.0f;
                data.c(d10);
            }
        }
    }

    public static boolean i(ShaderGraphData data) {
        if (data == null) {
            return false;
        }
        if (data.settings == null) {
            data.settings = new ShaderGraphSettings();
        }
        ShaderGraphSettings shaderGraphSettings = data.settings;
        if (shaderGraphSettings.attributes == null) {
            shaderGraphSettings.attributes = new SteppedArrayList();
        }
        ShaderGraphAttribute j10 = j(data, "cameraImage");
        if (j10 == null) {
            ShaderGraphAttribute shaderGraphAttribute = new ShaderGraphAttribute();
            shaderGraphAttribute.name = "cameraImage";
            shaderGraphAttribute.type = C.TEXTURE;
            data.settings.attributes.add(shaderGraphAttribute);
            return true;
        }
        C c10 = j10.type;
        C c11 = C.TEXTURE;
        if (c10 == c11) {
            return false;
        }
        j10.type = c11;
        return true;
    }

    public static ShaderGraphAttribute j(ShaderGraphData data, String name) {
        ShaderGraphSettings shaderGraphSettings;
        List<ShaderGraphAttribute> list;
        if (data != null && (shaderGraphSettings = data.settings) != null && (list = shaderGraphSettings.attributes) != null && name != null) {
            for (ShaderGraphAttribute shaderGraphAttribute : list) {
                if (shaderGraphAttribute != null && name.equals(shaderGraphAttribute.name)) {
                    return shaderGraphAttribute;
                }
            }
        }
        return null;
    }

    public static boolean k(ShaderGraphAttribute a10) {
        return a10 != null && "cameraImage".equals(a10.name);
    }

    public static boolean l(Material material) {
        return (material == null || material.D() == null || !material.D().equalsIgnoreCase(f81159a)) ? false : true;
    }

    public static String m(String file) {
        String str;
        if (file == null) {
            file = "";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("sampler:");
        if (file.isEmpty()) {
            str = "sgp_tex_0";
        } else {
            str = "sgp_tex_" + Math.abs(file.hashCode());
        }
        sb2.append(str);
        return sb2.toString();
    }
}
