package com.jme3.util.struct;

import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.shader.bufferobject.BufferObject;
import com.jme3.shader.bufferobject.layout.Std140Layout;
import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class StructStd140BufferObject extends BufferObject {
    private static final Logger logger = Logger.getLogger(StructStd140BufferObject.class.getName());
    private transient List<StructField<?>> resolvedFields;
    private transient Class<? extends Struct> rootStruct;
    private final Std140Layout std140;

    public StructStd140BufferObject() {
        this.std140 = new Std140Layout();
    }

    private void loadLayout(Struct struct) {
        ArrayList arrayList = new ArrayList();
        this.resolvedFields = StructUtils.getFields(struct, arrayList);
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            if (!Modifier.isFinal(((Field) it.next()).getModifiers())) {
                throw new RuntimeException("Can't load layout for " + ((Object) struct) + " every field must be final");
            }
        }
        this.rootStruct = struct.getClass();
        StructUtils.setStd140BufferLayout(this.resolvedFields, this.std140, this);
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        try {
            String readString = jmeImporter.getCapsule(this).readString("rootClass", null);
            if (readString == null) {
                throw new Exception("rootClass is undefined");
            }
            loadLayout((Struct) Class.forName(readString).newInstance());
        } catch (Exception e10) {
            throw new RuntimeException(e10);
        }
    }

    public void update(Struct struct) {
        boolean z10;
        if (this.rootStruct != struct.getClass()) {
            Logger logger2 = logger;
            Level level = Level.FINE;
            if (logger2.isLoggable(level)) {
                logger2.log(level, "Change in layout {0} =/= {1} ", new Object[]{this.rootStruct, struct.getClass()});
            }
            loadLayout(struct);
            z10 = true;
        } else {
            z10 = false;
        }
        StructUtils.updateBufferData(this.resolvedFields, z10, this.std140, this);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        jmeExporter.getCapsule(this).write(this.rootStruct.getName(), "rootClass", (String) null);
    }

    public StructStd140BufferObject(int i10) {
        super(i10);
        this.std140 = new Std140Layout();
    }

    @Override
    public StructStd140BufferObject mo1296clone() {
        return (StructStd140BufferObject) super.mo1296clone();
    }

    public StructStd140BufferObject(Struct struct) {
        this();
        update(struct);
    }
}
