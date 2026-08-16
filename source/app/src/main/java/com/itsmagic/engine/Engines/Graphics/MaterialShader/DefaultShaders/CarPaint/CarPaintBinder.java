package com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.CarPaint;

import JAVARuntime.Color;
import K8.a;
import cc.C4171b;
import com.itsmagic.engine.Engines.Engine.Color.ColorINT;
import com.itsmagic.engine.Engines.Engine.Material.EntryNotFoundException;
import com.itsmagic.engine.Engines.Engine.Material.Material;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentMaterial;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.DefaultShaders.CarPaint.CarPaintBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.Generic.ShaderBinder;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import ec.d;
import ec.i;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.List;

public abstract class CarPaintBinder extends ShaderBinder {
    public void B0(final String uniform, final Color color) {
        if (D() == null || color == null) {
            return;
        }
        if (a.r()) {
            D().E(uniform, color.instance.w(), color.instance.u(), color.instance.s(), color.instance.r());
        } else {
            a.I(new Runnable() {
                @Override
                public final void run() {
                    CarPaintBinder.this.H0(uniform, color);
                }
            });
        }
    }

    public void C0(final String uniform, final float value) {
        if (D() == null) {
            return;
        }
        if (a.r()) {
            D().w(uniform, value);
        } else {
            a.I(new Runnable() {
                @Override
                public final void run() {
                    CarPaintBinder.this.I0(uniform, value);
                }
            });
        }
    }

    public void D0() {
    }

    public final Field[] E0() {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        Class<?> cls = getClass();
        while (true) {
            if (cls == null || cls == ShaderBinder.class || cls == Object.class) {
                break;
            }
            for (Field field : cls.getDeclaredFields()) {
                field.setAccessible(true);
                steppedArrayList.add(field);
            }
            cls = cls.getSuperclass();
        }
        return (Field[]) steppedArrayList.toArray(new Field[0]);
    }

    public void F0(CarPaintBinder target) {
        target.n0(K());
    }

    public final boolean G0(Field field) {
        if (Modifier.isStatic(field.getModifiers()) || field.getName().endsWith("_OFCBRL") || field.getType() == d.class || field.getType() == FilamentMaterial.class || field.getType() == i.class || field.getType().getName().startsWith("com.itsmagic.engine.Engines.Graphics.Utils.Entities")) {
            return false;
        }
        return field.getType() == Color.class || field.getType() == Float.TYPE || field.getType() == Integer.TYPE || field.getType() == Boolean.TYPE || field.getType() == String.class;
    }

    public final void H0(String str, Color color) {
        D().E(str, color.instance.w(), color.instance.u(), color.instance.s(), color.instance.r());
    }

    public final void I0(String str, float f10) {
        D().w(str, f10);
    }

    public RuntimeException J0(String entry) {
        return new EntryNotFoundException("Entry not found: " + entry);
    }

    @Override
    public boolean a0() {
        return true;
    }

    @Override
    public void b0(List<SerializableShaderEntry> dataList) {
        SerializableShaderEntry d10;
        ColorINT c10;
        for (Field field : E0()) {
            if (G0(field)) {
                String name = field.getName();
                try {
                    if (field.getType() == Color.class) {
                        SerializableShaderEntry d11 = SerializableShaderEntry.d(name, SerializableShaderEntry.f81153g, dataList);
                        if (d11 != null && (c10 = SerializableShaderEntry.c(d11)) != null) {
                            field.set(this, c10.e0());
                        }
                    } else if (field.getType() == Float.TYPE) {
                        SerializableShaderEntry d12 = SerializableShaderEntry.d(name, SerializableShaderEntry.f81148b, dataList);
                        if (d12 != null) {
                            field.setFloat(this, SerializableShaderEntry.g(d12));
                        }
                    } else if (field.getType() == Integer.TYPE) {
                        SerializableShaderEntry d13 = SerializableShaderEntry.d(name, SerializableShaderEntry.f81155i, dataList);
                        if (d13 != null) {
                            field.setInt(this, SerializableShaderEntry.h(d13));
                        }
                    } else if (field.getType() == Boolean.TYPE) {
                        SerializableShaderEntry d14 = SerializableShaderEntry.d(name, "Boolean", dataList);
                        if (d14 != null) {
                            field.setBoolean(this, SerializableShaderEntry.a(d14));
                        }
                    } else if (field.getType() == String.class && (d10 = SerializableShaderEntry.d(name, SerializableShaderEntry.f81157k, dataList)) != null) {
                        field.set(this, SerializableShaderEntry.s(d10));
                    }
                } catch (IllegalAccessException e10) {
                    e10.printStackTrace();
                }
            }
        }
        if (D() != null) {
            D0();
        }
    }

    @Override
    public void c0(List<SerializableShaderEntry> dataList) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        for (Field field : E0()) {
            if (G0(field)) {
                try {
                    Object obj = field.get(this);
                    if (obj != null) {
                        String name = field.getName();
                        if (field.getType() == Color.class) {
                            SerializableShaderEntry e10 = SerializableShaderEntry.e(name, SerializableShaderEntry.f81153g, dataList);
                            SerializableShaderEntry.l(e10, ((Color) obj).instance);
                            steppedArrayList.add(e10);
                        } else if (field.getType() == Float.TYPE) {
                            SerializableShaderEntry e11 = SerializableShaderEntry.e(name, SerializableShaderEntry.f81148b, dataList);
                            SerializableShaderEntry.i(e11, field.getFloat(this));
                            steppedArrayList.add(e11);
                        } else if (field.getType() == Integer.TYPE) {
                            SerializableShaderEntry e12 = SerializableShaderEntry.e(name, SerializableShaderEntry.f81155i, dataList);
                            SerializableShaderEntry.j(e12, field.getInt(this));
                            steppedArrayList.add(e12);
                        } else if (field.getType() == Boolean.TYPE) {
                            SerializableShaderEntry e13 = SerializableShaderEntry.e(name, "Boolean", dataList);
                            SerializableShaderEntry.q(e13, field.getBoolean(this));
                            steppedArrayList.add(e13);
                        } else if (field.getType() == String.class) {
                            SerializableShaderEntry e14 = SerializableShaderEntry.e(name, SerializableShaderEntry.f81157k, dataList);
                            SerializableShaderEntry.o(e14, (String) obj);
                            steppedArrayList.add(e14);
                        }
                    }
                } catch (IllegalAccessException e15) {
                    e15.printStackTrace();
                }
            }
        }
        dataList.clear();
        dataList.addAll(steppedArrayList);
    }

    @Override
    public boolean d() {
        return super.d();
    }

    @Override
    public void h0(FilamentMaterial filamentMaterial, Material material) {
        super.h0(filamentMaterial, material);
        D0();
    }

    @Override
    public List<i> k(C4171b renderPass) {
        SteppedArrayList steppedArrayList = new SteppedArrayList();
        if (renderPass != null && renderPass.d() != null) {
            steppedArrayList.add(renderPass.d());
        }
        return steppedArrayList;
    }

    @Override
    public abstract ShaderBinder l();

    @Override
    public i y0(i variance, C4171b renderPass) {
        if (variance != null) {
            return variance;
        }
        if (renderPass != null) {
            return renderPass.d();
        }
        return null;
    }
}
