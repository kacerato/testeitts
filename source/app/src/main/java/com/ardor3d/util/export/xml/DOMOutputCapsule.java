package com.ardor3d.util.export.xml;

import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.export.Savable;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;
import java.util.Arrays;
import java.util.BitSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;

public class DOMOutputCapsule implements OutputCapsule {
    private static final String _dataAttributeName = "data";
    private final Document _doc;
    private final Map<Savable, Element> _writtenSavables = new IdentityHashMap();
    private Element _currentElement = null;

    public DOMOutputCapsule(Document document) {
        this._doc = document;
    }

    private Element appendElement(String str) {
        Element createElement = this._doc.createElement(str);
        Element element = this._currentElement;
        if (element == null) {
            this._doc.appendChild(createElement);
        } else {
            element.appendChild(createElement);
        }
        this._currentElement = createElement;
        return createElement;
    }

    private static String encodeString(String str) {
        if (str == null) {
            return null;
        }
        return str.replaceAll("\\&", "&amp;").replaceAll("\\\"", "&quot;").replaceAll("\\<", "&lt;");
    }

    public Document getDoc() {
        return this._doc;
    }

    @Override
    public void write(byte b10, String str, byte b11) throws IOException {
        if (b10 == b11) {
            return;
        }
        this._currentElement.setAttribute(str, String.valueOf((int) b10));
    }

    @Override
    public void writeByteBufferList(List<ByteBuffer> list, String str, List<ByteBuffer> list2) throws IOException {
        if (list == null || list.equals(list2)) {
            return;
        }
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(list.size()));
        Iterator<ByteBuffer> it = list.iterator();
        while (it.hasNext()) {
            write(it.next(), "ByteBuffer", (ByteBuffer) null);
        }
        this._currentElement = (Element) appendElement.getParentNode();
    }

    @Override
    public void writeFloatBufferList(List<FloatBuffer> list, String str, List<FloatBuffer> list2) throws IOException {
        if (list == null || list.equals(list2)) {
            return;
        }
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(list.size()));
        Iterator<FloatBuffer> it = list.iterator();
        while (it.hasNext()) {
            write(it.next(), XMLExporter.ELEMENT_FLOATBUFFER, (FloatBuffer) null);
        }
        this._currentElement = (Element) appendElement.getParentNode();
    }

    @Override
    public void writeSavableList(List<? extends Savable> list, String str, List<? extends Savable> list2) throws IOException {
        if (list == null || list.equals(list2)) {
            return;
        }
        Element element = this._currentElement;
        Element appendElement = appendElement(str);
        this._currentElement = appendElement;
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(list.size()));
        for (Savable savable : list) {
            if (savable != null) {
                write(savable, savable.getClassTag().getName(), (Savable) null);
            }
        }
        this._currentElement = element;
    }

    @Override
    public void writeSavableListArray(List<? extends Savable>[] listArr, String str, List<? extends Savable>[] listArr2) throws IOException {
        if (listArr == null || Arrays.equals(listArr, listArr2)) {
            return;
        }
        Element element = this._currentElement;
        appendElement(str).setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(listArr.length));
        for (int i10 = 0; i10 < listArr.length; i10++) {
            List<? extends Savable> list = listArr[i10];
            if (list == null) {
                Element element2 = this._currentElement;
                appendElement("null");
                this._currentElement = element2;
            } else {
                writeSavableList(list, "SavableArrayList_" + i10, null);
            }
        }
        this._currentElement = element;
    }

    @Override
    public void writeSavableListArray2D(List<? extends Savable>[][] listArr, String str, List<? extends Savable>[][] listArr2) throws IOException {
        if (listArr == null || Arrays.deepEquals(listArr, listArr2)) {
            return;
        }
        Element appendElement = appendElement(str);
        int length = listArr.length;
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(length));
        for (int i10 = 0; i10 < length; i10++) {
            writeSavableListArray(listArr[i10], "SavableArrayListArray_" + i10, null);
        }
        this._currentElement = (Element) appendElement.getParentNode();
    }

    @Override
    public void writeSavableMap(Map<? extends Savable, ? extends Savable> map, String str, Map<? extends Savable, ? extends Savable> map2) throws IOException {
        if (map == null || map.equals(map2)) {
            return;
        }
        Element appendElement = appendElement(str);
        for (Savable savable : map.o()) {
            appendElement(XMLExporter.ELEMENT_MAPENTRY);
            write(savable, XMLExporter.ELEMENT_KEY, (Savable) null);
            write(map.get(savable), XMLExporter.ELEMENT_VALUE, (Savable) null);
            this._currentElement = appendElement;
        }
        this._currentElement = (Element) appendElement.getParentNode();
    }

    @Override
    public void writeStringSavableMap(Map<String, ? extends Savable> map, String str, Map<String, ? extends Savable> map2) throws IOException {
        if (map == null || map.equals(map2)) {
            return;
        }
        Element appendElement = appendElement(str);
        for (String str2 : map.o()) {
            appendElement(XMLExporter.ELEMENT_MAPENTRY).setAttribute("key", str2);
            write(map.get(str2), "Savable", (Savable) null);
            this._currentElement = appendElement;
        }
        this._currentElement = (Element) appendElement.getParentNode();
    }

    @Override
    public void write(byte[] bArr, String str, byte[] bArr2) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        if (bArr == null) {
            bArr = bArr2;
        }
        for (byte b10 : bArr) {
            sb2.append((int) b10);
            sb2.append(" ");
        }
        sb2.setLength(sb2.length() - 1);
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(bArr.length));
        appendElement.setAttribute("data", sb2.toString());
        this._currentElement = (Element) this._currentElement.getParentNode();
    }

    @Override
    public void write(byte[][] bArr, String str, byte[][] bArr2) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        if (bArr == null) {
            bArr = bArr2;
        }
        for (byte[] bArr3 : bArr) {
            for (byte b10 : bArr3) {
                sb2.append((int) b10);
                sb2.append(" ");
            }
            sb2.append(" ");
        }
        sb2.setLength(sb2.length() - 2);
        Element appendElement = appendElement(str);
        appendElement.setAttribute("size_outer", String.valueOf(bArr.length));
        appendElement.setAttribute("size_inner", String.valueOf(bArr[0].length));
        appendElement.setAttribute("data", sb2.toString());
        this._currentElement = (Element) this._currentElement.getParentNode();
    }

    @Override
    public void write(int i10, String str, int i11) throws IOException {
        if (i10 == i11) {
            return;
        }
        this._currentElement.setAttribute(str, String.valueOf(i10));
    }

    @Override
    public void write(int[] iArr, String str, int[] iArr2) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        if (iArr == null || Arrays.equals(iArr, iArr2)) {
            return;
        }
        for (int i10 : iArr) {
            sb2.append(i10);
            sb2.append(" ");
        }
        sb2.setLength(Math.max(0, sb2.length() - 1));
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(iArr.length));
        appendElement.setAttribute("data", sb2.toString());
        this._currentElement = (Element) this._currentElement.getParentNode();
    }

    @Override
    public void write(int[][] iArr, String str, int[][] iArr2) throws IOException {
        if (iArr == null || Arrays.deepEquals(iArr, iArr2)) {
            return;
        }
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(iArr.length));
        for (int i10 = 0; i10 < iArr.length; i10++) {
            write(iArr[i10], "array_" + i10, iArr2 == null ? null : iArr2[i10]);
        }
        this._currentElement = (Element) appendElement.getParentNode();
    }

    @Override
    public void write(float f10, String str, float f11) throws IOException {
        if (f10 == f11) {
            return;
        }
        this._currentElement.setAttribute(str, String.valueOf(f10));
    }

    @Override
    public void write(float[] fArr, String str, float[] fArr2) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        if (fArr == null) {
            fArr = fArr2;
        }
        for (float f10 : fArr) {
            sb2.append(f10);
            sb2.append(" ");
        }
        sb2.setLength(sb2.length() - 1);
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(fArr.length));
        appendElement.setAttribute("data", sb2.toString());
        this._currentElement = (Element) this._currentElement.getParentNode();
    }

    @Override
    public void write(float[][] fArr, String str, float[][] fArr2) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        if (fArr == null || Arrays.deepEquals(fArr, fArr2)) {
            return;
        }
        for (float[] fArr3 : fArr) {
            for (float f10 : fArr3) {
                sb2.append(f10);
                sb2.append(" ");
            }
        }
        sb2.setLength(sb2.length() - 1);
        Element appendElement = appendElement(str);
        appendElement.setAttribute("size_outer", String.valueOf(fArr.length));
        appendElement.setAttribute("size_inner", String.valueOf(fArr[0].length));
        appendElement.setAttribute("data", sb2.toString());
        this._currentElement = (Element) this._currentElement.getParentNode();
    }

    @Override
    public void write(double d10, String str, double d11) throws IOException {
        if (d10 == d11) {
            return;
        }
        this._currentElement.setAttribute(str, String.valueOf(d10));
    }

    @Override
    public void write(double[] dArr, String str, double[] dArr2) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        if (dArr == null) {
            dArr = dArr2;
        }
        for (double d10 : dArr) {
            sb2.append(d10);
            sb2.append(" ");
        }
        sb2.setLength(sb2.length() - 1);
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(dArr.length));
        appendElement.setAttribute("data", sb2.toString());
        this._currentElement = (Element) this._currentElement.getParentNode();
    }

    @Override
    public void write(double[][] dArr, String str, double[][] dArr2) throws IOException {
        if (dArr == null || Arrays.deepEquals(dArr, dArr2)) {
            return;
        }
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(dArr.length));
        for (int i10 = 0; i10 < dArr.length; i10++) {
            write(dArr[i10], "array_" + i10, dArr2 == null ? null : dArr2[i10]);
        }
        this._currentElement = (Element) appendElement.getParentNode();
    }

    @Override
    public void write(long j10, String str, long j11) throws IOException {
        if (j10 == j11) {
            return;
        }
        this._currentElement.setAttribute(str, String.valueOf(j10));
    }

    @Override
    public void write(long[] jArr, String str, long[] jArr2) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        if (jArr == null) {
            jArr = jArr2;
        }
        for (long j10 : jArr) {
            sb2.append(j10);
            sb2.append(" ");
        }
        sb2.setLength(sb2.length() - 1);
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(jArr.length));
        appendElement.setAttribute("data", sb2.toString());
        this._currentElement = (Element) this._currentElement.getParentNode();
    }

    @Override
    public void write(long[][] jArr, String str, long[][] jArr2) throws IOException {
        if (jArr == null || Arrays.deepEquals(jArr, jArr2)) {
            return;
        }
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(jArr.length));
        for (int i10 = 0; i10 < jArr.length; i10++) {
            write(jArr[i10], "array_" + i10, jArr2 == null ? null : jArr2[i10]);
        }
        this._currentElement = (Element) appendElement.getParentNode();
    }

    @Override
    public void write(short s10, String str, short s11) throws IOException {
        if (s10 == s11) {
            return;
        }
        this._currentElement.setAttribute(str, String.valueOf((int) s10));
    }

    @Override
    public void write(short[] sArr, String str, short[] sArr2) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        if (sArr == null) {
            sArr = sArr2;
        }
        for (short s10 : sArr) {
            sb2.append((int) s10);
            sb2.append(" ");
        }
        sb2.setLength(sb2.length() - 1);
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(sArr.length));
        appendElement.setAttribute("data", sb2.toString());
        this._currentElement = (Element) this._currentElement.getParentNode();
    }

    @Override
    public void write(short[][] sArr, String str, short[][] sArr2) throws IOException {
        if (sArr == null || Arrays.deepEquals(sArr, sArr2)) {
            return;
        }
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(sArr.length));
        for (int i10 = 0; i10 < sArr.length; i10++) {
            write(sArr[i10], "array_" + i10, sArr2 == null ? null : sArr2[i10]);
        }
        this._currentElement = (Element) appendElement.getParentNode();
    }

    @Override
    public void write(boolean z10, String str, boolean z11) throws IOException {
        if (z10 == z11) {
            return;
        }
        this._currentElement.setAttribute(str, String.valueOf(z10));
    }

    @Override
    public void write(boolean[] zArr, String str, boolean[] zArr2) throws IOException {
        StringBuilder sb2 = new StringBuilder();
        if (zArr == null) {
            zArr = zArr2;
        }
        for (boolean z10 : zArr) {
            sb2.append(z10);
            sb2.append(" ");
        }
        sb2.setLength(Math.max(0, sb2.length() - 1));
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(zArr.length));
        appendElement.setAttribute("data", sb2.toString());
        this._currentElement = (Element) this._currentElement.getParentNode();
    }

    @Override
    public void write(boolean[][] zArr, String str, boolean[][] zArr2) throws IOException {
        if (zArr == null || Arrays.deepEquals(zArr, zArr2)) {
            return;
        }
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(zArr.length));
        for (int i10 = 0; i10 < zArr.length; i10++) {
            write(zArr[i10], "array_" + i10, zArr2 == null ? null : zArr2[i10]);
        }
        this._currentElement = (Element) appendElement.getParentNode();
    }

    @Override
    public void write(String str, String str2, String str3) throws IOException {
        if (str == null || str.equals(str3)) {
            return;
        }
        this._currentElement.setAttribute(str2, encodeString(str));
    }

    @Override
    public void write(String[] strArr, String str, String[] strArr2) throws IOException {
        Element appendElement = appendElement(str);
        if (strArr == null) {
            strArr = strArr2;
        }
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(strArr.length));
        for (int i10 = 0; i10 < strArr.length; i10++) {
            String str2 = strArr[i10];
            appendElement("String_" + i10);
            this._currentElement.setAttribute("value", encodeString(str2));
            this._currentElement = appendElement;
        }
        this._currentElement = (Element) this._currentElement.getParentNode();
    }

    @Override
    public void write(String[][] strArr, String str, String[][] strArr2) throws IOException {
        if (strArr == null || Arrays.deepEquals(strArr, strArr2)) {
            return;
        }
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(strArr.length));
        for (int i10 = 0; i10 < strArr.length; i10++) {
            write(strArr[i10], "array_" + i10, strArr2 == null ? null : strArr2[i10]);
        }
        this._currentElement = (Element) appendElement.getParentNode();
    }

    @Override
    public void write(BitSet bitSet, String str, BitSet bitSet2) throws IOException {
        if (bitSet == null || bitSet.equals(bitSet2)) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        int nextSetBit = bitSet.nextSetBit(0);
        while (nextSetBit >= 0) {
            sb2.append(nextSetBit);
            sb2.append(" ");
            nextSetBit = bitSet.nextSetBit(nextSetBit + 1);
        }
        sb2.setLength(Math.max(0, sb2.length() - 1));
        this._currentElement.setAttribute(str, sb2.toString());
    }

    @Override
    public void write(Savable savable, String str, Savable savable2) throws IOException {
        Element element;
        if (savable == null || savable.equals(savable2)) {
            return;
        }
        Element element2 = this._currentElement;
        Element element3 = this._writtenSavables.get(savable);
        String name = !savable.getClass().getName().equals(str) ? savable.getClass().getName() : null;
        try {
            this._doc.createElement(str);
        } catch (DOMException unused) {
            name = savable.getClass().getName();
            str = "Object";
        }
        if (element3 != null) {
            String attribute = element3.getAttribute("reference_ID");
            if (attribute.length() == 0) {
                attribute = savable.getClassTag().getName() + "@" + savable.hashCode();
                element3.setAttribute("reference_ID", attribute);
            }
            element = appendElement(str);
            element.setAttribute("ref", attribute);
        } else {
            Element appendElement = appendElement(str);
            this._writtenSavables.put(savable, appendElement);
            savable.write(this);
            element = appendElement;
        }
        if (name != null) {
            element.setAttribute("class", name);
        }
        this._currentElement = element2;
    }

    @Override
    public void write(Savable[] savableArr, String str, Savable[] savableArr2) throws IOException {
        if (savableArr == null || Arrays.equals(savableArr, savableArr2)) {
            return;
        }
        Element element = this._currentElement;
        appendElement(str).setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(savableArr.length));
        for (Savable savable : savableArr) {
            if (savable == null) {
                if (!str.equals("renderStateList")) {
                    Element element2 = this._currentElement;
                    appendElement("null");
                    this._currentElement = element2;
                }
            } else {
                write(savable, savable.getClassTag().getName(), (Savable) null);
            }
        }
        this._currentElement = element;
    }

    @Override
    public void write(Savable[][] savableArr, String str, Savable[][] savableArr2) throws IOException {
        if (savableArr == null || Arrays.deepEquals(savableArr, savableArr2)) {
            return;
        }
        Element appendElement = appendElement(str);
        appendElement.setAttribute("size_outer", String.valueOf(savableArr.length));
        appendElement.setAttribute("size_inner", String.valueOf(savableArr[0].length));
        for (Savable[] savableArr3 : savableArr) {
            for (Savable savable : savableArr3) {
                write(savable, savable.getClassTag().getSimpleName(), (Savable) null);
            }
        }
        this._currentElement = (Element) this._currentElement.getParentNode();
    }

    @Override
    public void write(FloatBuffer floatBuffer, String str, FloatBuffer floatBuffer2) throws IOException {
        if (floatBuffer == null) {
            return;
        }
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(floatBuffer.limit()));
        StringBuilder sb2 = new StringBuilder();
        int position = floatBuffer.position();
        floatBuffer.rewind();
        while (floatBuffer.hasRemaining()) {
            sb2.append(floatBuffer.get());
            sb2.append(" ");
        }
        sb2.setLength(Math.max(0, sb2.length() - 1));
        floatBuffer.position(position);
        appendElement.setAttribute("data", sb2.toString());
        this._currentElement = (Element) appendElement.getParentNode();
    }

    @Override
    public void write(IntBuffer intBuffer, String str, IntBuffer intBuffer2) throws IOException {
        if (intBuffer == null || intBuffer.equals(intBuffer2)) {
            return;
        }
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(intBuffer.limit()));
        StringBuilder sb2 = new StringBuilder();
        int position = intBuffer.position();
        intBuffer.rewind();
        while (intBuffer.hasRemaining()) {
            sb2.append(intBuffer.get());
            sb2.append(" ");
        }
        sb2.setLength(sb2.length() - 1);
        intBuffer.position(position);
        appendElement.setAttribute("data", sb2.toString());
        this._currentElement = (Element) appendElement.getParentNode();
    }

    @Override
    public void write(ByteBuffer byteBuffer, String str, ByteBuffer byteBuffer2) throws IOException {
        if (byteBuffer == null || byteBuffer.equals(byteBuffer2)) {
            return;
        }
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(byteBuffer.limit()));
        StringBuilder sb2 = new StringBuilder();
        int position = byteBuffer.position();
        byteBuffer.rewind();
        while (byteBuffer.hasRemaining()) {
            sb2.append((int) byteBuffer.get());
            sb2.append(" ");
        }
        sb2.setLength(sb2.length() - 1);
        byteBuffer.position(position);
        appendElement.setAttribute("data", sb2.toString());
        this._currentElement = (Element) appendElement.getParentNode();
    }

    @Override
    public void write(ShortBuffer shortBuffer, String str, ShortBuffer shortBuffer2) throws IOException {
        if (shortBuffer == null || shortBuffer.equals(shortBuffer2)) {
            return;
        }
        Element appendElement = appendElement(str);
        appendElement.setAttribute(XMLExporter.ATTRIBUTE_SIZE, String.valueOf(shortBuffer.limit()));
        StringBuilder sb2 = new StringBuilder();
        int position = shortBuffer.position();
        shortBuffer.rewind();
        while (shortBuffer.hasRemaining()) {
            sb2.append((int) shortBuffer.get());
            sb2.append(" ");
        }
        sb2.setLength(sb2.length() - 1);
        shortBuffer.position(position);
        appendElement.setAttribute("data", sb2.toString());
        this._currentElement = (Element) appendElement.getParentNode();
    }

    @Override
    public void write(Enum<?> r12, String str, Enum<?> r32) throws IOException {
        if (r12 == r32 || r12 == null) {
            return;
        }
        this._currentElement.setAttribute(str, String.valueOf(r12));
    }

    @Override
    public void write(Enum<?>[] enumArr, String str) throws IOException {
        if (enumArr == null) {
            return;
        }
        String[] strArr = new String[enumArr.length];
        int length = enumArr.length;
        int i10 = 0;
        int i11 = 0;
        while (i10 < length) {
            strArr[i11] = enumArr[i10].name();
            i10++;
            i11++;
        }
        write(strArr, str, (String[]) null);
    }
}
