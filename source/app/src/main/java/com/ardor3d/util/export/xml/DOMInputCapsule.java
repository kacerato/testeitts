package com.ardor3d.util.export.xml;

import com.ardor3d.annotation.SavableFactory;
import com.ardor3d.image.Texture;
import com.ardor3d.renderer.state.RenderState;
import com.ardor3d.renderer.state.TextureState;
import com.ardor3d.util.Ardor3dException;
import com.ardor3d.util.TextureManager;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.Savable;
import com.ardor3d.util.geom.BufferUtils;
import com.ardor3d.util.resource.ResourceLocatorTool;
import com.itsmagic.engine.Engines.Graphics.MaterialShader.SerializableShaderEntry;
import java.io.IOException;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class DOMInputCapsule implements InputCapsule {
    private Element _currentElem;
    private final Document _doc;
    private boolean _isAtRoot = true;
    private final Map<String, Savable> _referencedSavables = new HashMap();

    public DOMInputCapsule(Document document) {
        this._doc = document;
        this._currentElem = document.getDocumentElement();
    }

    private static String decodeString(String str) {
        if (str == null) {
            return null;
        }
        return str.replaceAll("\\&quot;", JavadocConstants.ANCHOR_PREFIX_END).replaceAll("\\&lt;", "<").replaceAll("\\&amp;", "&");
    }

    private Element findChildElement(Element element, String str) {
        if (element == null) {
            return null;
        }
        Node firstChild = element.getFirstChild();
        while (firstChild != null && (!(firstChild instanceof Element) || !firstChild.getNodeName().equals(str))) {
            firstChild = firstChild.getNextSibling();
        }
        return (Element) firstChild;
    }

    private Element findFirstChildElement(Element element) {
        Node firstChild = element.getFirstChild();
        while (firstChild != null && !(firstChild instanceof Element)) {
            firstChild = firstChild.getNextSibling();
        }
        return (Element) firstChild;
    }

    private Element findNextSiblingElement(Element element) {
        for (Node nextSibling = element.getNextSibling(); nextSibling != null; nextSibling = nextSibling.getNextSibling()) {
            if (nextSibling instanceof Element) {
                return (Element) nextSibling;
            }
        }
        return null;
    }

    private Savable[] readRenderStateList(Element element, Savable[] savableArr) {
        try {
            ArrayList arrayList = new ArrayList();
            this._currentElem = findFirstChildElement(element);
            while (true) {
                Element element2 = this._currentElem;
                if (element2 == null) {
                    return (Savable[]) arrayList.toArray(new RenderState[0]);
                }
                Object readTextureStateFromCurrent = element2.getNodeName().equals("com.ardor3d.scene.state.TextureState") ? readTextureStateFromCurrent() : (RenderState) readSavableFromCurrentElem(null);
                if (readTextureStateFromCurrent != null) {
                    arrayList.add(readTextureStateFromCurrent);
                }
                this._currentElem = findNextSiblingElement(element2);
            }
        } catch (Exception e10) {
            Logger.getLogger(DOMInputCapsule.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e10);
            return savableArr;
        }
    }

    private Savable readSavableFromCurrentElem(Savable savable) throws InstantiationException, ClassNotFoundException, IOException, IllegalAccessException {
        Element element = this._currentElem;
        if (element == null || element.getNodeName().equals("null")) {
            return null;
        }
        String attribute = this._currentElem.getAttribute("ref");
        if (attribute.length() > 0) {
            return this._referencedSavables.get(attribute);
        }
        String nodeName = this._currentElem.getNodeName();
        if (savable != null) {
            nodeName = savable.getClass().getName();
        } else if (this._currentElem.hasAttribute("class")) {
            nodeName = this._currentElem.getAttribute("class");
        }
        try {
            Class<?> cls = Class.forName(nodeName);
            SavableFactory savableFactory = (SavableFactory) cls.getAnnotation(SavableFactory.class);
            Savable savable2 = savableFactory == null ? (Savable) cls.newInstance() : (Savable) cls.getMethod(savableFactory.factoryMethod(), null).invoke(null, null);
            String attribute2 = this._currentElem.getAttribute("reference_ID");
            if (attribute2.length() > 0) {
                this._referencedSavables.put(attribute2, savable2);
            }
            if (savable2 == null) {
                return savable;
            }
            savable2.read(this);
            return savable2;
        } catch (InstantiationException e10) {
            Logger.getLogger(getClass().getName()).logp(Level.SEVERE, getClass().toString(), "readSavableFromCurrentElem(Savable)", "Could not access constructor of class '" + nodeName + "'! \nSome types may require the annotation SavableFactory.  Please double check.");
            throw new Ardor3dException(e10);
        } catch (NoSuchMethodException e11) {
            Logger.getLogger(getClass().getName()).logp(Level.SEVERE, getClass().toString(), "readSavableFromCurrentElem(Savable)", e11.getMessage() + " \nMethod specified in annotation does not appear to exist or has an invalid method signature.");
            throw new Ardor3dException(e11);
        } catch (Exception e12) {
            Logger.getLogger(getClass().getName()).logp(Level.SEVERE, getClass().toString(), "readSavableFromCurrentElem(Savable)", "Exception", (Throwable) e12);
            return null;
        }
    }

    private TextureState readTextureStateFromCurrent() {
        TextureState textureState;
        Element element = this._currentElem;
        try {
            textureState = (TextureState) readSavableFromCurrentElem(null);
        } catch (Exception e10) {
            e = e10;
            textureState = null;
        }
        try {
            Savable[] readSavableArray = readSavableArray(ResourceLocatorTool.TYPE_TEXTURE, new Texture[0]);
            for (int i10 = 0; i10 < readSavableArray.length; i10++) {
                Texture texture = (Texture) readSavableArray[i10];
                textureState.setTexture(TextureManager.loadFromKey(texture.getTextureKey(), null, texture), i10);
            }
        } catch (Exception e11) {
            e = e11;
            Logger.getLogger(DOMInputCapsule.class.getName()).log(Level.SEVERE, (String) null, (Throwable) e);
            this._currentElem = element;
            return textureState;
        }
        this._currentElem = element;
        return textureState;
    }

    @Override
    public BitSet readBitSet(String str, BitSet bitSet) throws IOException {
        try {
            BitSet bitSet2 = new BitSet();
            String[] split = this._currentElem.getAttribute(str).split("\\s+");
            for (int i10 = 0; i10 < split.length; i10++) {
                if (Integer.parseInt(split[i10]) == 1) {
                    bitSet2.set(i10);
                }
            }
            return bitSet2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public boolean readBoolean(String str, boolean z10) throws IOException {
        try {
            String attribute = this._currentElem.getAttribute(str);
            return attribute.length() > 0 ? Boolean.parseBoolean(attribute) : z10;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public boolean[] readBooleanArray(String str, boolean[] zArr) throws IOException {
        try {
            Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
            if (findChildElement == null) {
                return zArr;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            boolean[] zArr2 = new boolean[parseInt];
            String[] split = findChildElement.getAttribute("data").split("\\s+");
            for (int i10 = 0; i10 < parseInt; i10++) {
                zArr2[i10] = Boolean.parseBoolean(split[i10]);
            }
            return zArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public boolean[][] readBooleanArray2D(String str, boolean[][] zArr) throws IOException {
        try {
            Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
            if (findChildElement == null) {
                return zArr;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            boolean[][] zArr2 = new boolean[parseInt];
            NodeList childNodes = this._currentElem.getChildNodes();
            int i10 = 0;
            for (int i11 = 0; i11 < childNodes.getLength(); i11++) {
                Node item = childNodes.item(i11);
                if ((item instanceof Element) && item.getNodeName().contains("array")) {
                    if (i10 >= parseInt) {
                        throw new IOException("String array contains more elements than specified!");
                    }
                    zArr2[i10] = readBooleanArray(item.getNodeName(), null);
                    i10++;
                }
            }
            this._currentElem = (Element) this._currentElem.getParentNode();
            return zArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public byte readByte(String str, byte b10) throws IOException {
        try {
            return Byte.parseByte(this._currentElem.getAttribute(str));
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public byte[] readByteArray(String str, byte[] bArr) throws IOException {
        try {
            Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
            if (findChildElement == null) {
                return bArr;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            byte[] bArr2 = new byte[parseInt];
            String[] split = findChildElement.getAttribute("data").split("\\s+");
            for (int i10 = 0; i10 < parseInt; i10++) {
                bArr2[i10] = Byte.parseByte(split[i10]);
            }
            return bArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public byte[][] readByteArray2D(String str, byte[][] bArr) throws IOException {
        try {
            Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
            if (findChildElement == null) {
                return bArr;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            byte[][] bArr2 = new byte[parseInt];
            NodeList childNodes = this._currentElem.getChildNodes();
            int i10 = 0;
            for (int i11 = 0; i11 < childNodes.getLength(); i11++) {
                Node item = childNodes.item(i11);
                if ((item instanceof Element) && item.getNodeName().contains("array")) {
                    if (i10 >= parseInt) {
                        throw new IOException("String array contains more elements than specified!");
                    }
                    bArr2[i10] = readByteArray(item.getNodeName(), null);
                    i10++;
                }
            }
            this._currentElem = (Element) this._currentElem.getParentNode();
            return bArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public ByteBuffer readByteBuffer(String str, ByteBuffer byteBuffer) throws IOException {
        try {
            Element findChildElement = findChildElement(this._currentElem, str);
            if (findChildElement == null) {
                return byteBuffer;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(parseInt);
            if (parseInt > 0) {
                for (String str2 : findChildElement.getAttribute("data").split("\\s+")) {
                    createByteBuffer.put(Byte.valueOf(str2).byteValue());
                }
                createByteBuffer.flip();
            }
            return createByteBuffer;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public List<ByteBuffer> readByteBufferList(String str, List<ByteBuffer> list) throws IOException {
        try {
            Element findChildElement = findChildElement(this._currentElem, str);
            if (findChildElement == null) {
                return list;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            ArrayList arrayList = new ArrayList(parseInt);
            this._currentElem = findFirstChildElement(findChildElement);
            for (int i10 = 0; i10 < parseInt; i10++) {
                arrayList.add(readByteBuffer(null, null));
                if (i10 == parseInt - 1) {
                    break;
                }
                this._currentElem = findNextSiblingElement(this._currentElem);
            }
            this._currentElem = (Element) findChildElement.getParentNode();
            return arrayList;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public double readDouble(String str, double d10) throws IOException {
        try {
            String attribute = this._currentElem.getAttribute(str);
            return attribute.length() > 0 ? Double.parseDouble(attribute) : d10;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public double[] readDoubleArray(String str, double[] dArr) throws IOException {
        try {
            Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
            if (findChildElement == null) {
                return dArr;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            double[] dArr2 = new double[parseInt];
            String[] split = findChildElement.getAttribute("data").split("\\s+");
            for (int i10 = 0; i10 < parseInt; i10++) {
                dArr2[i10] = Double.parseDouble(split[i10]);
            }
            return dArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public double[][] readDoubleArray2D(String str, double[][] dArr) throws IOException {
        try {
            Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
            if (findChildElement == null) {
                return dArr;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            double[][] dArr2 = new double[parseInt];
            NodeList childNodes = this._currentElem.getChildNodes();
            int i10 = 0;
            for (int i11 = 0; i11 < childNodes.getLength(); i11++) {
                Node item = childNodes.item(i11);
                if ((item instanceof Element) && item.getNodeName().contains("array")) {
                    if (i10 >= parseInt) {
                        throw new IOException("String array contains more elements than specified!");
                    }
                    dArr2[i10] = readDoubleArray(item.getNodeName(), null);
                    i10++;
                }
            }
            this._currentElem = (Element) this._currentElem.getParentNode();
            return dArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public <T extends Enum<T>> T readEnum(String str, Class<T> cls, T t10) throws IOException {
        try {
            String attribute = this._currentElem.getAttribute(str);
            return (attribute == null || attribute.length() <= 0) ? t10 : (T) Enum.valueOf(cls, attribute);
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v0, types: [T extends java.lang.Enum<T>[]] */
    /* JADX WARN: Type inference failed for: r8v1, types: [T extends java.lang.Enum<T>[]] */
    /* JADX WARN: Type inference failed for: r8v4, types: [java.lang.Enum[]] */
    @Override
    public <T extends Enum<T>> T[] readEnumArray(String str, Class<T> cls, T[] tArr) throws IOException {
        String[] readStringArray = readStringArray(str, null);
        if (readStringArray != null) {
            tArr = (T[]) ((Enum[]) Array.newInstance((Class<?>) cls, readStringArray.length));
            int length = readStringArray.length;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                tArr[i11] = Enum.valueOf(cls, readStringArray[i10]);
                i10++;
                i11++;
            }
        }
        return (T[]) tArr;
    }

    @Override
    public float readFloat(String str, float f10) throws IOException {
        try {
            String attribute = this._currentElem.getAttribute(str);
            return attribute.length() > 0 ? Float.parseFloat(attribute) : f10;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public float[] readFloatArray(String str, float[] fArr) throws IOException {
        try {
            Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
            if (findChildElement == null) {
                return fArr;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            float[] fArr2 = new float[parseInt];
            String[] split = findChildElement.getAttribute("data").split("\\s+");
            for (int i10 = 0; i10 < parseInt; i10++) {
                fArr2[i10] = Float.parseFloat(split[i10]);
            }
            return fArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public float[][] readFloatArray2D(String str, float[][] fArr) throws IOException {
        try {
            Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
            if (findChildElement == null) {
                return fArr;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute("size_outer"));
            int parseInt2 = Integer.parseInt(findChildElement.getAttribute("size_outer"));
            float[][] fArr2 = (float[][]) Array.newInstance(Float.TYPE, parseInt, parseInt2);
            String[] split = findChildElement.getAttribute("data").split("\\s+");
            for (int i10 = 0; i10 < parseInt; i10++) {
                fArr2[i10] = new float[parseInt2];
                for (int i11 = 0; i11 < parseInt2; i11++) {
                    fArr2[i10][i11] = Float.parseFloat(split[i10]);
                }
            }
            return fArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public FloatBuffer readFloatBuffer(String str, FloatBuffer floatBuffer) throws IOException {
        try {
            Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
            if (findChildElement == null) {
                return floatBuffer;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(parseInt);
            if (parseInt > 0) {
                for (String str2 : findChildElement.getAttribute("data").split("\\s+")) {
                    createFloatBuffer.put(Float.parseFloat(str2));
                }
                createFloatBuffer.flip();
            }
            return createFloatBuffer;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public List<FloatBuffer> readFloatBufferList(String str, List<FloatBuffer> list) throws IOException {
        try {
            Element findChildElement = findChildElement(this._currentElem, str);
            if (findChildElement == null) {
                return list;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            ArrayList arrayList = new ArrayList(parseInt);
            this._currentElem = findFirstChildElement(findChildElement);
            for (int i10 = 0; i10 < parseInt; i10++) {
                arrayList.add(readFloatBuffer(null, null));
                if (i10 == parseInt - 1) {
                    break;
                }
                this._currentElem = findNextSiblingElement(this._currentElem);
            }
            this._currentElem = (Element) findChildElement.getParentNode();
            return arrayList;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public int readInt(String str, int i10) throws IOException {
        try {
            String attribute = this._currentElem.getAttribute(str);
            return attribute.length() > 0 ? Integer.parseInt(attribute) : i10;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public int[] readIntArray(String str, int[] iArr) throws IOException {
        try {
            Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
            if (findChildElement == null) {
                return iArr;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            int[] iArr2 = new int[parseInt];
            String[] split = findChildElement.getAttribute("data").split("\\s+");
            for (int i10 = 0; i10 < parseInt; i10++) {
                iArr2[i10] = Integer.parseInt(split[i10]);
            }
            return iArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public int[][] readIntArray2D(String str, int[][] iArr) throws IOException {
        try {
            Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
            if (findChildElement == null) {
                return iArr;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            int[][] iArr2 = new int[parseInt];
            NodeList childNodes = this._currentElem.getChildNodes();
            int i10 = 0;
            for (int i11 = 0; i11 < childNodes.getLength(); i11++) {
                Node item = childNodes.item(i11);
                if ((item instanceof Element) && item.getNodeName().contains("array")) {
                    if (i10 >= parseInt) {
                        throw new IOException("String array contains more elements than specified!");
                    }
                    iArr2[i10] = readIntArray(item.getNodeName(), null);
                    i10++;
                }
            }
            this._currentElem = (Element) this._currentElem.getParentNode();
            return iArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public IntBuffer readIntBuffer(String str, IntBuffer intBuffer) throws IOException {
        try {
            Element findChildElement = findChildElement(this._currentElem, str);
            if (findChildElement == null) {
                return intBuffer;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            IntBuffer createIntBuffer = BufferUtils.createIntBuffer(parseInt);
            if (parseInt > 0) {
                for (String str2 : findChildElement.getAttribute("data").split("\\s+")) {
                    createIntBuffer.put(Integer.parseInt(str2));
                }
                createIntBuffer.flip();
            }
            return createIntBuffer;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public long readLong(String str, long j10) throws IOException {
        try {
            String attribute = this._currentElem.getAttribute(str);
            return attribute.length() > 0 ? Long.parseLong(attribute) : j10;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public long[] readLongArray(String str, long[] jArr) throws IOException {
        try {
            Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
            if (findChildElement == null) {
                return jArr;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            long[] jArr2 = new long[parseInt];
            String[] split = findChildElement.getAttribute("data").split("\\s+");
            for (int i10 = 0; i10 < parseInt; i10++) {
                jArr2[i10] = Long.parseLong(split[i10]);
            }
            return jArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public long[][] readLongArray2D(String str, long[][] jArr) throws IOException {
        try {
            Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
            if (findChildElement == null) {
                return jArr;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            long[][] jArr2 = new long[parseInt];
            NodeList childNodes = this._currentElem.getChildNodes();
            int i10 = 0;
            for (int i11 = 0; i11 < childNodes.getLength(); i11++) {
                Node item = childNodes.item(i11);
                if ((item instanceof Element) && item.getNodeName().contains("array")) {
                    if (i10 >= parseInt) {
                        throw new IOException("String array contains more elements than specified!");
                    }
                    jArr2[i10] = readLongArray(item.getNodeName(), null);
                    i10++;
                }
            }
            this._currentElem = (Element) this._currentElem.getParentNode();
            return jArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public Savable readSavable(String str, Savable savable) throws IOException {
        Element findFirstChildElement;
        try {
            if (str != null) {
                findFirstChildElement = findChildElement(this._currentElem, str);
                if (findFirstChildElement == null) {
                    return savable;
                }
            } else if (this._isAtRoot) {
                findFirstChildElement = this._doc.getDocumentElement();
                this._isAtRoot = false;
            } else {
                findFirstChildElement = findFirstChildElement(this._currentElem);
            }
            this._currentElem = findFirstChildElement;
            Savable readSavableFromCurrentElem = readSavableFromCurrentElem(savable);
            if (this._currentElem.getParentNode() instanceof Element) {
                this._currentElem = (Element) this._currentElem.getParentNode();
            } else {
                this._currentElem = null;
            }
            return readSavableFromCurrentElem;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public Savable[] readSavableArray(String str, Savable[] savableArr) throws IOException {
        Savable[] savableArr2;
        try {
            Element findChildElement = findChildElement(this._currentElem, str);
            if (findChildElement == null) {
                return savableArr;
            }
            if (str.equals("renderStateList")) {
                savableArr2 = readRenderStateList(findChildElement, savableArr);
            } else {
                int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
                Savable[] savableArr3 = new Savable[parseInt];
                this._currentElem = findFirstChildElement(findChildElement);
                for (int i10 = 0; i10 < parseInt; i10++) {
                    savableArr3[i10] = readSavableFromCurrentElem(null);
                    if (i10 == parseInt - 1) {
                        break;
                    }
                    this._currentElem = findNextSiblingElement(this._currentElem);
                }
                savableArr2 = savableArr3;
            }
            this._currentElem = (Element) findChildElement.getParentNode();
            return savableArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public Savable[][] readSavableArray2D(String str, Savable[][] savableArr) throws IOException {
        try {
            Element findChildElement = findChildElement(this._currentElem, str);
            if (findChildElement == null) {
                return savableArr;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute("size_outer"));
            int parseInt2 = Integer.parseInt(findChildElement.getAttribute("size_outer"));
            Savable[][] savableArr2 = (Savable[][]) Array.newInstance((Class<?>) Savable.class, parseInt, parseInt2);
            this._currentElem = findFirstChildElement(findChildElement);
            for (int i10 = 0; i10 < parseInt; i10++) {
                for (int i11 = 0; i11 < parseInt2; i11++) {
                    savableArr2[i10][i11] = readSavableFromCurrentElem(null);
                    if (i10 != parseInt - 1 || i11 != parseInt2 - 1) {
                        this._currentElem = findNextSiblingElement(this._currentElem);
                    }
                }
            }
            this._currentElem = (Element) findChildElement.getParentNode();
            return savableArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public <E extends Savable> List<E> readSavableList(String str, List<E> list) throws IOException {
        try {
            Element findChildElement = findChildElement(this._currentElem, str);
            if (findChildElement == null) {
                return list;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            ArrayList arrayList = new ArrayList();
            this._currentElem = findFirstChildElement(findChildElement);
            for (int i10 = 0; i10 < parseInt; i10++) {
                arrayList.add(readSavableFromCurrentElem(null));
                if (i10 == parseInt - 1) {
                    break;
                }
                this._currentElem = findNextSiblingElement(this._currentElem);
            }
            this._currentElem = (Element) findChildElement.getParentNode();
            return arrayList;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public <E extends Savable> List<E>[] readSavableListArray(String str, List<E>[] listArr) throws IOException {
        try {
            Element findChildElement = findChildElement(this._currentElem, str);
            if (findChildElement == null) {
                return listArr;
            }
            this._currentElem = findChildElement;
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            ArrayList[] arrayListArr = new ArrayList[parseInt];
            for (int i10 = 0; i10 < parseInt; i10++) {
                arrayListArr[i10] = readSavableList("SavableArrayList_" + i10, null);
                if (i10 == parseInt - 1) {
                    break;
                }
            }
            this._currentElem = (Element) findChildElement.getParentNode();
            return arrayListArr;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public <E extends Savable> List<E>[][] readSavableListArray2D(String str, List<E>[][] listArr) throws IOException {
        try {
            Element findChildElement = findChildElement(this._currentElem, str);
            if (findChildElement == null) {
                return listArr;
            }
            this._currentElem = findChildElement;
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            ArrayList[][] arrayListArr = new ArrayList[parseInt];
            for (int i10 = 0; i10 < parseInt; i10++) {
                arrayListArr[i10] = readSavableListArray("SavableArrayListArray_" + i10, null);
            }
            this._currentElem = (Element) findChildElement.getParentNode();
            return arrayListArr;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public <K extends Savable, V extends Savable> Map<K, V> readSavableMap(String str, Map<K, V> map) throws IOException {
        Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
        HashMap hashMap = new HashMap();
        NodeList childNodes = findChildElement.getChildNodes();
        for (int i10 = 0; i10 < childNodes.getLength(); i10++) {
            Node item = childNodes.item(i10);
            if ((item instanceof Element) && item.getNodeName().equals(XMLExporter.ELEMENT_MAPENTRY)) {
                this._currentElem = (Element) item;
                hashMap.put(readSavable(XMLExporter.ELEMENT_KEY, null), readSavable(XMLExporter.ELEMENT_VALUE, null));
            }
        }
        this._currentElem = (Element) findChildElement.getParentNode();
        return hashMap;
    }

    @Override
    public short readShort(String str, short s10) throws IOException {
        try {
            String attribute = this._currentElem.getAttribute(str);
            return attribute.length() > 0 ? Short.parseShort(attribute) : s10;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public short[] readShortArray(String str, short[] sArr) throws IOException {
        try {
            Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
            if (findChildElement == null) {
                return sArr;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            short[] sArr2 = new short[parseInt];
            String[] split = findChildElement.getAttribute("data").split("\\s+");
            for (int i10 = 0; i10 < parseInt; i10++) {
                sArr2[i10] = Short.parseShort(split[i10]);
            }
            return sArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public short[][] readShortArray2D(String str, short[][] sArr) throws IOException {
        try {
            Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
            if (findChildElement == null) {
                return sArr;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            short[][] sArr2 = new short[parseInt];
            NodeList childNodes = this._currentElem.getChildNodes();
            int i10 = 0;
            for (int i11 = 0; i11 < childNodes.getLength(); i11++) {
                Node item = childNodes.item(i11);
                if ((item instanceof Element) && item.getNodeName().contains("array")) {
                    if (i10 >= parseInt) {
                        throw new IOException("String array contains more elements than specified!");
                    }
                    sArr2[i10] = readShortArray(item.getNodeName(), null);
                    i10++;
                }
            }
            this._currentElem = (Element) this._currentElem.getParentNode();
            return sArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public ShortBuffer readShortBuffer(String str, ShortBuffer shortBuffer) throws IOException {
        try {
            Element findChildElement = findChildElement(this._currentElem, str);
            if (findChildElement == null) {
                return shortBuffer;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            ShortBuffer createShortBuffer = BufferUtils.createShortBuffer(parseInt);
            if (parseInt > 0) {
                for (String str2 : findChildElement.getAttribute("data").split("\\s+")) {
                    createShortBuffer.put(Short.valueOf(str2).shortValue());
                }
                createShortBuffer.flip();
            }
            return createShortBuffer;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public String readString(String str, String str2) throws IOException {
        try {
            return decodeString(this._currentElem.getAttribute(str));
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public String[] readStringArray(String str, String[] strArr) throws IOException {
        try {
            Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
            if (findChildElement == null) {
                return strArr;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            String[] strArr2 = new String[parseInt];
            NodeList childNodes = findChildElement.getChildNodes();
            int i10 = 0;
            for (int i11 = 0; i11 < childNodes.getLength(); i11++) {
                Node item = childNodes.item(i11);
                if ((item instanceof Element) && item.getNodeName().contains(SerializableShaderEntry.f81157k)) {
                    if (i10 >= parseInt) {
                        throw new IOException("String array contains more elements than specified!");
                    }
                    strArr2[i10] = ((Element) item).getAttributeNode("value").getValue();
                    i10++;
                }
            }
            return strArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    @Override
    public String[][] readStringArray2D(String str, String[][] strArr) throws IOException {
        try {
            Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
            if (findChildElement == null) {
                return strArr;
            }
            int parseInt = Integer.parseInt(findChildElement.getAttribute(XMLExporter.ATTRIBUTE_SIZE));
            String[][] strArr2 = new String[parseInt];
            NodeList childNodes = this._currentElem.getChildNodes();
            int i10 = 0;
            for (int i11 = 0; i11 < childNodes.getLength(); i11++) {
                Node item = childNodes.item(i11);
                if ((item instanceof Element) && item.getNodeName().contains("array")) {
                    if (i10 >= parseInt) {
                        throw new IOException("String array contains more elements than specified!");
                    }
                    strArr2[i10] = readStringArray(item.getNodeName(), null);
                    i10++;
                }
            }
            this._currentElem = (Element) this._currentElem.getParentNode();
            return strArr2;
        } catch (Exception e10) {
            IOException iOException = new IOException();
            iOException.initCause(e10);
            throw iOException;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v0, types: [java.util.Map<java.lang.String, V extends com.ardor3d.util.export.Savable>] */
    /* JADX WARN: Type inference failed for: r7v1, types: [java.util.Map<java.lang.String, V extends com.ardor3d.util.export.Savable>] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.util.Map, java.util.HashMap] */
    @Override
    public <V extends Savable> Map<String, V> readStringSavableMap(String str, Map<String, V> map) throws IOException {
        Element findChildElement = str != null ? findChildElement(this._currentElem, str) : this._currentElem;
        if (findChildElement != null) {
            map = new HashMap();
            NodeList childNodes = findChildElement.getChildNodes();
            for (int i10 = 0; i10 < childNodes.getLength(); i10++) {
                Node item = childNodes.item(i10);
                if ((item instanceof Element) && item.getNodeName().equals(XMLExporter.ELEMENT_MAPENTRY)) {
                    Element element = (Element) item;
                    this._currentElem = element;
                    map.put(element.getAttribute("key"), readSavable("Savable", null));
                }
            }
            this._currentElem = (Element) findChildElement.getParentNode();
        }
        return (Map<String, V>) map;
    }
}
