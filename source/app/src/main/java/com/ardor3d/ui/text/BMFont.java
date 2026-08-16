package com.ardor3d.ui.text;

import F2.i;
import android.content.ContentResolver;
import com.ardor3d.image.Texture;
import com.ardor3d.image.TextureStoreFormat;
import com.ardor3d.renderer.queue.RenderBucketType;
import com.ardor3d.renderer.state.BlendState;
import com.ardor3d.renderer.state.TextureState;
import com.ardor3d.renderer.state.ZBufferState;
import com.ardor3d.scenegraph.Spatial;
import com.ardor3d.util.TextureKey;
import com.ardor3d.util.TextureManager;
import com.ardor3d.util.export.xml.XMLExporter;
import com.ardor3d.util.resource.ResourceSource;
import com.google.common.collect.M1;
import com.google.common.collect.Q1;
import java.io.IOException;
import java.io.OutputStream;
import java.net.MalformedURLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.logging.Logger;
import javax.xml.parsers.DocumentBuilderFactory;
import org.openjdk.tools.doclint.DocLint;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public class BMFont {
    private static Logger logger = Logger.getLogger(BMFont.class.getName());
    private int _maxCharAdv;
    private Texture _pageTexture;
    private String _styleName;
    private final boolean _useMipMaps;
    private final Map<Integer, Char> _charMap = Q1.Y();
    private final Map<Integer, Map<Integer, Integer>> _kernMap = Q1.Y();
    private final ArrayList<Page> _pages = new ArrayList<>();
    private RenderStateSetter _blendStateSetter = null;
    private RenderStateSetter _alphaStateSetter = null;
    private Common _common = null;
    private Info _info = null;

    public class Char {
        public int chnl;
        public int height;

        public int f58738id;
        public int page;
        public int width;

        public int f58739x;
        public int xadvance;
        public int xoffset;

        public int f58740y;
        public int yoffset;

        public Char() {
        }
    }

    public class Common {
        public int alphaChnl;
        public int base;
        public int blueChnl;
        public int greenChnl;
        public int lineHeight;
        public boolean packed;
        public int pages;
        public int redChnl;
        public int scaleH;
        public int scaleW;

        public Common() {
        }
    }

    public class Info {

        public boolean f58741aa;
        public boolean bold;
        public String charset;
        public String face;
        public boolean italic;
        public int outline;
        public int[] padding;
        public int size;
        public boolean smooth;
        public int[] spacing;
        public int stretchH;
        public boolean unicode;

        public Info() {
        }
    }

    public class Page {
        public String file;

        public int f58742id;

        public Page() {
        }
    }

    public class RenderStateSetter {
        float _blendDisabledTestRef = 0.3f;
        float _blendEnabledTestRef = 0.02f;
        boolean _useBlend;
        public BlendState blendState;
        public TextureState textureState;
        public ZBufferState zBuffState;

        public RenderStateSetter(Texture texture, boolean z10) {
            TextureState textureState = new TextureState();
            this.textureState = textureState;
            textureState.setTexture(texture);
            BlendState blendState = new BlendState();
            this.blendState = blendState;
            blendState.setSourceFunction(BlendState.SourceFunction.SourceAlpha);
            this.blendState.setDestinationFunction(BlendState.DestinationFunction.OneMinusSourceAlpha);
            this.blendState.setTestEnabled(true);
            this.blendState.setTestFunction(BlendState.TestFunction.GreaterThan);
            ZBufferState zBufferState = new ZBufferState();
            this.zBuffState = zBufferState;
            zBufferState.setFunction(ZBufferState.TestFunction.LessThanOrEqualTo);
            setUseBlend(z10);
        }

        public void applyTo(Spatial spatial) {
            spatial.setRenderState(this.textureState);
            spatial.setRenderState(this.blendState);
            spatial.setRenderState(this.zBuffState);
            if (this._useBlend) {
                spatial.getSceneHints().setRenderBucketType(RenderBucketType.Transparent);
            } else {
                spatial.getSceneHints().setRenderBucketType(RenderBucketType.Opaque);
            }
        }

        public void setUseBlend(boolean z10) {
            this._useBlend = z10;
            if (z10) {
                this.blendState.setBlendEnabled(true);
                this.blendState.setReference(this._blendEnabledTestRef);
                this.zBuffState.setWritable(false);
            } else {
                this.blendState.setBlendEnabled(false);
                this.blendState.setReference(this._blendDisabledTestRef);
                this.zBuffState.setWritable(true);
            }
        }
    }

    public BMFont(ResourceSource resourceSource, boolean z10) throws IOException {
        this._useMipMaps = z10;
        parseFontFile(resourceSource);
        initialize(resourceSource);
    }

    private String generateCharsXML() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("  <chars count=\"");
        sb2.append(this._charMap.size());
        sb2.append("\">\n");
        Iterator<Integer> it = this._charMap.o().iterator();
        while (it.hasNext()) {
            Char r22 = this._charMap.get(it.next());
            sb2.append("    <char id=\"");
            sb2.append(r22.f58738id);
            sb2.append("\" x=\"");
            sb2.append(r22.f58739x);
            sb2.append("\" y=\"");
            sb2.append(r22.f58740y);
            sb2.append("\" width=\"");
            sb2.append(r22.width);
            sb2.append("\" height=\"");
            sb2.append(r22.height);
            sb2.append("\" xoffset=\"");
            sb2.append(r22.xoffset);
            sb2.append("\" yoffset=\"");
            sb2.append(r22.yoffset);
            sb2.append("\" xadvance=\"");
            sb2.append(r22.xadvance);
            sb2.append("\" page=\"");
            sb2.append(r22.page);
            sb2.append("\" chnl=\"");
            sb2.append(r22.chnl);
            sb2.append("\" />\n");
        }
        sb2.append("  </chars>\n");
        return sb2.toString();
    }

    private String generateCommonXML() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("  <common lineHeight=\"");
        sb2.append(this._common.lineHeight);
        sb2.append("\" base=\"");
        sb2.append(this._common.base);
        sb2.append("\" scaleW=\"");
        sb2.append(this._common.scaleW);
        sb2.append("\" scaleH=\"");
        sb2.append(this._common.scaleH);
        sb2.append("\" pages=\"");
        sb2.append(this._common.pages);
        sb2.append("\" packed=\"");
        sb2.append(this._common.packed ? "1" : "0");
        sb2.append("\" alphaChnl=\"");
        sb2.append(this._common.alphaChnl);
        sb2.append("\" redChnl=\"");
        sb2.append(this._common.redChnl);
        sb2.append("\" greenChnl=\"");
        sb2.append(this._common.greenChnl);
        sb2.append("\" blueChnl=\"");
        sb2.append(this._common.blueChnl);
        sb2.append("\"/>\n");
        return sb2.toString();
    }

    private String generateInfoXML() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("  <info face=\"");
        sb2.append(this._info.face);
        sb2.append("\" size=\"");
        sb2.append(this._info.size);
        sb2.append("\" bold=\"");
        sb2.append(this._info.bold ? "1" : "0");
        sb2.append("\" italic=\"");
        sb2.append(this._info.italic ? "1" : "0");
        sb2.append("\" charset=\"");
        sb2.append(this._info.charset);
        sb2.append("\" unicode=\"");
        sb2.append(this._info.unicode ? "1" : "0");
        sb2.append("\" stretchH=\"");
        sb2.append(this._info.stretchH);
        sb2.append("\" smooth=\"");
        sb2.append(this._info.smooth ? "1" : "0");
        sb2.append("\" aa=\"");
        sb2.append(this._info.f58741aa ? "1" : "0");
        sb2.append("\" padding=\"");
        int i10 = 0;
        int i11 = 0;
        while (true) {
            int[] iArr = this._info.padding;
            if (i11 >= iArr.length) {
                break;
            }
            sb2.append(iArr[i11]);
            if (i11 < this._info.padding.length - 1) {
                sb2.append(DocLint.SEPARATOR);
            }
            i11++;
        }
        sb2.append("\" spacing=\"");
        while (true) {
            int[] iArr2 = this._info.spacing;
            if (i10 >= iArr2.length) {
                sb2.append("\" outline=\"");
                sb2.append(this._info.outline);
                sb2.append("\"/>\n");
                return sb2.toString();
            }
            sb2.append(iArr2[i10]);
            if (i10 < this._info.spacing.length - 1) {
                sb2.append(DocLint.SEPARATOR);
            }
            i10++;
        }
    }

    private String generateKerningsXML() {
        StringBuilder sb2 = new StringBuilder();
        int i10 = 0;
        for (Integer num : this._kernMap.o()) {
            Map<Integer, Integer> map = this._kernMap.get(num);
            for (Integer num2 : map.o()) {
                Integer num3 = map.get(num2);
                sb2.append("    <kerning first=\"");
                sb2.append((Object) num);
                sb2.append("\" second=\"");
                sb2.append((Object) num2);
                sb2.append("\" amount=\"");
                sb2.append((Object) num3);
                sb2.append("\" />\n");
                i10++;
            }
        }
        return "  <kernings count=\"" + i10 + "\">\n" + sb2.toString() + "  </kernings>\n";
    }

    private String generatePagesXML() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("  <pages>\n");
        Iterator<Page> it = this._pages.iterator();
        while (it.hasNext()) {
            Page next = it.next();
            sb2.append("    <page id=\"");
            sb2.append(next.f58742id);
            sb2.append("\" file=\"");
            sb2.append(next.file);
            sb2.append("\" />\n");
        }
        sb2.append("  </pages>\n");
        return sb2.toString();
    }

    private void procesKerningNode(Node node) {
        NamedNodeMap attributes = node.getAttributes();
        int intAttrib = getIntAttrib("first", attributes);
        int intAttrib2 = getIntAttrib("second", attributes);
        int intAttrib3 = getIntAttrib("amount", attributes);
        Map<Integer, Integer> map = this._kernMap.get(Integer.valueOf(intAttrib));
        if (map == null) {
            map = Q1.Y();
            this._kernMap.put(Integer.valueOf(intAttrib), map);
        }
        map.put(Integer.valueOf(intAttrib2), Integer.valueOf(intAttrib3));
    }

    private void processCharNode(Node node) {
        NamedNodeMap attributes = node.getAttributes();
        Char r02 = new Char();
        r02.f58738id = getIntAttrib("id", attributes);
        r02.f58739x = getIntAttrib("x", attributes);
        r02.f58740y = getIntAttrib("y", attributes);
        r02.width = getIntAttrib("width", attributes);
        r02.height = getIntAttrib("height", attributes);
        r02.xoffset = getIntAttrib("xoffset", attributes);
        r02.yoffset = getIntAttrib("yoffset", attributes);
        r02.xadvance = getIntAttrib("xadvance", attributes);
        r02.page = getIntAttrib("page", attributes);
        r02.chnl = getIntAttrib("chnl", attributes);
        this._charMap.put(Integer.valueOf(r02.f58738id), r02);
        int i10 = r02.xadvance;
        if (i10 > this._maxCharAdv) {
            this._maxCharAdv = i10;
        }
    }

    private void processCommonNode(Node node) {
        NamedNodeMap attributes = node.getAttributes();
        Common common = new Common();
        this._common = common;
        common.lineHeight = getIntAttrib("lineHeight", attributes);
        this._common.base = getIntAttrib("base", attributes);
        this._common.scaleW = getIntAttrib("scaleW", attributes);
        this._common.scaleH = getIntAttrib("scaleH", attributes);
        this._common.pages = getIntAttrib("pages", attributes);
        this._common.packed = getBoolAttrib("packed", attributes);
        this._common.alphaChnl = getIntAttrib("alphaChnl", attributes);
        this._common.redChnl = getIntAttrib("redChnl", attributes);
        this._common.greenChnl = getIntAttrib("greenChnl", attributes);
        this._common.blueChnl = getIntAttrib("blueChnl", attributes);
    }

    private void processInfoNode(Node node) {
        NamedNodeMap attributes = node.getAttributes();
        Info info = new Info();
        this._info = info;
        info.face = getStringAttrib("face", attributes);
        this._info.size = getIntAttrib(XMLExporter.ATTRIBUTE_SIZE, attributes);
        this._info.bold = getBoolAttrib("bold", attributes);
        this._info.italic = getBoolAttrib("italic", attributes);
        this._info.charset = getStringAttrib("charset", attributes);
        this._info.unicode = getBoolAttrib("unicode", attributes);
        this._info.stretchH = getIntAttrib("stretchH", attributes);
        this._info.smooth = getBoolAttrib("smooth", attributes);
        this._info.f58741aa = getBoolAttrib("aa", attributes);
        this._info.padding = getIntArrayAttrib("padding", attributes);
        this._info.spacing = getIntArrayAttrib("spacing", attributes);
        this._info.outline = getIntAttrib("outline", attributes);
    }

    private void processNode(Node node) {
        String nodeName = node.getNodeName();
        if (nodeName != null) {
            if (nodeName.equals("info")) {
                processInfoNode(node);
                return;
            }
            if (nodeName.equals("common")) {
                processCommonNode(node);
                return;
            }
            if (nodeName.equals("page")) {
                processPageNode(node);
            } else if (nodeName.equals("char")) {
                processCharNode(node);
            } else if (nodeName.equals("kerning")) {
                procesKerningNode(node);
            }
        }
    }

    private void processPageNode(Node node) {
        NamedNodeMap attributes = node.getAttributes();
        Page page = new Page();
        page.f58742id = getIntAttrib("id", attributes);
        page.file = getStringAttrib(ContentResolver.SCHEME_FILE, attributes);
        this._pages.add(page);
        if (this._pages.size() > 1) {
            logger.warning("multiple pages defined in font description file, but only a single page is supported.");
        }
    }

    private void recurse(Node node) {
        NodeList childNodes = node.getChildNodes();
        for (int i10 = 0; i10 < childNodes.getLength(); i10++) {
            Node item = childNodes.item(i10);
            processNode(item);
            recurse(item);
        }
    }

    public void applyRenderStatesTo(Spatial spatial, boolean z10) {
        if (z10) {
            if (this._blendStateSetter == null) {
                this._blendStateSetter = new RenderStateSetter(this._pageTexture, true);
            }
            this._blendStateSetter.applyTo(spatial);
        } else {
            if (this._alphaStateSetter == null) {
                this._alphaStateSetter = new RenderStateSetter(this._pageTexture, false);
            }
            this._alphaStateSetter.applyTo(spatial);
        }
    }

    public int getBaseHeight() {
        return this._common.base;
    }

    public boolean getBoolAttrib(String str, NamedNodeMap namedNodeMap) {
        return Integer.parseInt(namedNodeMap.getNamedItem(str).getNodeValue()) == 1;
    }

    public Char getChar(int i10) {
        Char r22 = this._charMap.get(Integer.valueOf(i10));
        if (r22 != null) {
            return r22;
        }
        Char r23 = this._charMap.get(63);
        return r23 == null ? this._charMap.values().iterator().next() : r23;
    }

    public Info getInfo() {
        return this._info;
    }

    public int[] getIntArrayAttrib(String str, NamedNodeMap namedNodeMap) {
        StringTokenizer stringTokenizer = new StringTokenizer(namedNodeMap.getNamedItem(str).getNodeValue(), DocLint.SEPARATOR);
        int countTokens = stringTokenizer.countTokens();
        int[] iArr = new int[countTokens];
        for (int i10 = 0; i10 < countTokens; i10++) {
            iArr[i10] = Integer.parseInt(stringTokenizer.nextToken());
        }
        return iArr;
    }

    public int getIntAttrib(String str, NamedNodeMap namedNodeMap) {
        return Integer.parseInt(namedNodeMap.getNamedItem(str).getNodeValue());
    }

    public int getKerning(int i10, int i11) {
        Integer num;
        Map<Integer, Integer> map = this._kernMap.get(Integer.valueOf(i10));
        if (map == null || (num = map.get(Integer.valueOf(i11))) == null) {
            return 0;
        }
        return num.intValue();
    }

    public Map<Integer, Map<Integer, Integer>> getKerningMap() {
        return this._kernMap;
    }

    public Map<Integer, Integer> getKerningsForCharacter(int i10) {
        return this._kernMap.get(Integer.valueOf(i10));
    }

    public int getLineHeight() {
        return this._common.lineHeight;
    }

    public List<Integer> getMappedChars() {
        return M1.r(this._charMap.o());
    }

    public int getMaxCharAdvance() {
        return this._maxCharAdv;
    }

    public int getOutlineWidth() {
        return this._info.outline;
    }

    public Texture getPageTexture() {
        return this._pageTexture;
    }

    public int getSize() {
        return Math.abs(this._info.size);
    }

    public String getStringAttrib(String str, NamedNodeMap namedNodeMap) {
        return namedNodeMap.getNamedItem(str).getNodeValue();
    }

    public String getStyleName() {
        return this._styleName;
    }

    public int getTextureHeight() {
        return this._common.scaleH;
    }

    public int getTextureWidth() {
        return this._common.scaleW;
    }

    public void initialize(ResourceSource resourceSource) throws MalformedURLException {
        this._styleName = this._info.face + "-" + this._info.size;
        if (this._info.bold) {
            this._styleName += "-bold";
        } else {
            this._styleName += "-medium";
        }
        if (this._info.italic) {
            this._styleName += "-italic";
        } else {
            this._styleName += "-regular";
        }
        if (this._pages.size() > 0) {
            ResourceSource relativeSource = resourceSource.getRelativeSource("./" + this._pages.get(0).file);
            Texture.MagnificationFilter magnificationFilter = Texture.MagnificationFilter.Bilinear;
            Texture.MinificationFilter minificationFilter = Texture.MinificationFilter.BilinearNoMipMaps;
            if (this._useMipMaps) {
                minificationFilter = Texture.MinificationFilter.Trilinear;
            }
            Texture loadFromKey = TextureManager.loadFromKey(TextureKey.getKey(relativeSource, false, TextureStoreFormat.GuessNoCompressedFormat, minificationFilter), null, null);
            this._pageTexture = loadFromKey;
            loadFromKey.setMagnificationFilter(magnificationFilter);
            this._pageTexture.setLodBias(-1.0f);
            if (this._useMipMaps) {
                this._pageTexture.setAnisotropicFilterPercent(1.0f);
            }
        }
    }

    public void parseFontFile(ResourceSource resourceSource) throws IOException {
        this._maxCharAdv = 0;
        this._charMap.clear();
        this._pages.clear();
        try {
            Document parse = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(resourceSource.openStream());
            parse.getDocumentElement().normalize();
            recurse(parse.getElementsByTagName(i.f6428q).item(0));
        } catch (Throwable th2) {
            IOException iOException = new IOException("Error loading font file " + resourceSource.toString());
            iOException.initCause(th2);
            throw iOException;
        }
    }

    public void writeXML(OutputStream outputStream) throws IOException {
        outputStream.write(("<?xml version=\"1.0\"?>\n<font>\n" + generateInfoXML() + generateCommonXML() + generatePagesXML() + generateCharsXML() + generateKerningsXML() + "</font>").getBytes());
        outputStream.flush();
    }
}
