package org.eclipse.jdt.internal.core.nd.java;

import android.util.DisplayMetrics;
import java.io.File;
import java.util.List;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.resources.ResourcesPlugin;
import org.eclipse.core.runtime.CoreException;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdNode;
import org.eclipse.jdt.internal.core.nd.NdNodeTypeRegistry;
import org.eclipse.jdt.internal.core.nd.db.ChunkCache;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.field.FieldSearchIndex;
import org.eclipse.jdt.internal.core.nd.field.StructDef;
import org.eclipse.jdt.internal.core.nd.indexer.FileStateCache;
import org.eclipse.jdt.internal.core.nd.util.CharArrayUtils;

public class JavaIndex {
    static final boolean $assertionsDisabled = false;
    public static final FieldSearchIndex<NdResourceFile> FILES;
    private static final String INDEX_FILENAME = "index.db";
    public static final FieldSearchIndex<NdTypeId> SIMPLE_INDEX;
    public static final FieldSearchIndex<NdTypeId> TYPES;
    private static final BestResourceFile bestResourceFile;
    private static Nd globalNd;
    private static final Object ndMutex;
    public static final StructDef<JavaIndex> type;
    private final long address;
    private FieldSearchIndex.IResultRank anyResult = new FieldSearchIndex.IResultRank() {
        @Override
        public long getRank(Nd nd2, long j10) {
            return 1L;
        }
    };

    private Nd f102560nd;
    static final int CURRENT_VERSION = Nd.version(1, 49);
    static final int MAX_SUPPORTED_VERSION = Nd.version(1, 49);
    static final int MIN_SUPPORTED_VERSION = Nd.version(1, 49);

    public static final class BestResourceFile implements FieldSearchIndex.IResultRank {
        @Override
        public long getRank(Nd nd2, long j10) {
            return NdResourceFile.TIME_LAST_SCANNED.get(nd2, j10);
        }
    }

    static {
        StructDef<JavaIndex> create = StructDef.create(JavaIndex.class);
        type = create;
        FILES = FieldSearchIndex.create(create, NdResourceFile.FILENAME);
        SIMPLE_INDEX = FieldSearchIndex.create(create, NdTypeId.SIMPLE_NAME);
        TYPES = FieldSearchIndex.create(create, NdTypeId.FIELD_DESCRIPTOR);
        create.done();
        bestResourceFile = new BestResourceFile();
        ndMutex = new Object();
    }

    public JavaIndex(Nd nd2, long j10) {
        this.address = j10;
        this.f102560nd = nd2;
    }

    public static Nd createNd(File file, ChunkCache chunkCache) {
        return new Nd(file, chunkCache, createTypeRegistry(), MIN_SUPPORTED_VERSION, MAX_SUPPORTED_VERSION, CURRENT_VERSION);
    }

    public static NdNodeTypeRegistry<NdNode> createTypeRegistry() {
        NdNodeTypeRegistry<NdNode> ndNodeTypeRegistry = new NdNodeTypeRegistry<>();
        ndNodeTypeRegistry.register(40, NdBinding.type.getFactory());
        ndNodeTypeRegistry.register(48, NdComplexTypeSignature.type.getFactory());
        ndNodeTypeRegistry.register(56, NdConstant.type.getFactory());
        ndNodeTypeRegistry.register(64, NdConstantAnnotation.type.getFactory());
        ndNodeTypeRegistry.register(80, NdConstantArray.type.getFactory());
        ndNodeTypeRegistry.register(96, NdConstantBoolean.type.getFactory());
        ndNodeTypeRegistry.register(112, NdConstantByte.type.getFactory());
        ndNodeTypeRegistry.register(128, NdConstantChar.type.getFactory());
        ndNodeTypeRegistry.register(144, NdConstantClass.type.getFactory());
        ndNodeTypeRegistry.register(160, NdConstantDouble.type.getFactory());
        ndNodeTypeRegistry.register(176, NdConstantEnum.type.getFactory());
        ndNodeTypeRegistry.register(192, NdConstantFloat.type.getFactory());
        ndNodeTypeRegistry.register(208, NdConstantInt.type.getFactory());
        ndNodeTypeRegistry.register(224, NdConstantLong.type.getFactory());
        ndNodeTypeRegistry.register(240, NdConstantShort.type.getFactory());
        ndNodeTypeRegistry.register(256, NdConstantString.type.getFactory());
        ndNodeTypeRegistry.register(272, NdMethod.type.getFactory());
        ndNodeTypeRegistry.register(280, NdMethodAnnotationData.type.getFactory());
        ndNodeTypeRegistry.register(336, NdResourceFile.type.getFactory());
        ndNodeTypeRegistry.register(368, NdType.type.getFactory());
        ndNodeTypeRegistry.register(400, NdTypeArgument.type.getFactory());
        ndNodeTypeRegistry.register(416, NdTypeInterface.type.getFactory());
        ndNodeTypeRegistry.register(448, NdTypeSignature.type.getFactory());
        ndNodeTypeRegistry.register(464, NdTypeId.type.getFactory());
        ndNodeTypeRegistry.register(DisplayMetrics.DENSITY_XXHIGH, NdTypeInterface.type.getFactory());
        ndNodeTypeRegistry.register(496, NdVariable.type.getFactory());
        ndNodeTypeRegistry.register(512, NdWorkspaceLocation.type.getFactory());
        return ndNodeTypeRegistry;
    }

    public static int getCurrentVersion() {
        return CURRENT_VERSION;
    }

    public static File getDBFile() {
        return JavaCore.getPlugin().getStateLocation().append(INDEX_FILENAME).toFile();
    }

    public static Nd getGlobalNd() {
        Nd nd2;
        Nd nd3;
        Object obj = ndMutex;
        synchronized (obj) {
            nd2 = globalNd;
        }
        if (nd2 != null) {
            return nd2;
        }
        Nd createNd = createNd(getDBFile(), ChunkCache.getSharedInstance());
        synchronized (obj) {
            try {
                if (globalNd == null) {
                    globalNd = createNd;
                }
                nd3 = globalNd;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return nd3;
    }

    public static JavaIndex getIndex(Nd nd2) {
        return new JavaIndex(nd2, Database.DATA_AREA_OFFSET);
    }

    public static IPath getLocationForElement(IJavaElement iJavaElement) {
        throw null;
    }

    public static IPath getLocationForPath(IPath iPath) {
        IResource findMember = ResourcesPlugin.getWorkspace().getRoot().findMember(iPath);
        return findMember != null ? findMember.getLocation() : iPath;
    }

    public static boolean isEnabled() {
        return false;
    }

    public NdTypeId createTypeId(char[] cArr) {
        NdTypeId findType = findType(cArr);
        if (findType != null) {
            return findType;
        }
        if (cArr.length > 1 && cArr[0] == 'L' && cArr[cArr.length - 1] != ';') {
            throw new IllegalStateException(new String(cArr) + " is not a valid field descriptor");
        }
        NdTypeId ndTypeId = new NdTypeId(this.f102560nd, cArr);
        if (CharArrayUtils.equals(ndTypeId.getFieldDescriptor().getChars(), cArr)) {
            return ndTypeId;
        }
        throw new IllegalStateException("Field descriptor didn't match");
    }

    public void dirty(String str) {
        FileStateCache.getCache(getNd()).clear();
    }

    public List<NdResourceFile> findResourcesWithPath(String str) {
        return FILES.findAll(this.f102560nd, this.address, FieldSearchIndex.SearchCriteria.create(str.toCharArray()));
    }

    public NdTypeId findType(char[] cArr) {
        return TYPES.findBest(this.f102560nd, this.address, FieldSearchIndex.SearchCriteria.create(cArr), this.anyResult);
    }

    public List<NdTypeId> findTypesBySimpleName(char[] cArr) {
        return SIMPLE_INDEX.findAll(this.f102560nd, this.address, FieldSearchIndex.SearchCriteria.create(cArr).prefix(true));
    }

    public List<NdResourceFile> getAllResourceFiles() {
        return FILES.asList(this.f102560nd, this.address);
    }

    public Nd getNd() {
        return this.f102560nd;
    }

    public NdResourceFile getResourceFile(char[] cArr) {
        return FILES.findBest(this.f102560nd, this.address, FieldSearchIndex.SearchCriteria.create(cArr), bestResourceFile);
    }

    public boolean isUpToDate(NdResourceFile ndResourceFile) throws CoreException {
        if (ndResourceFile == null || !ndResourceFile.isDoneIndexing()) {
            return false;
        }
        String string = ndResourceFile.getLocation().getString();
        FileStateCache cache = FileStateCache.getCache(getNd());
        Boolean isUpToDate = cache.isUpToDate(string);
        if (isUpToDate != null) {
            return isUpToDate.booleanValue();
        }
        boolean matches = ndResourceFile.getFingerprint().test(new Path(string), null).matches();
        cache.put(string, matches);
        return matches;
    }

    public boolean visitFieldDescriptorsStartingWith(char[] cArr, FieldSearchIndex.Visitor<NdTypeId> visitor) {
        return TYPES.visitAll(this.f102560nd, this.address, FieldSearchIndex.SearchCriteria.create(cArr).prefix(true), visitor);
    }

    public static JavaIndex getIndex() {
        return getIndex(getGlobalNd());
    }

    public List<NdTypeId> findTypesBySimpleName(char[] cArr, int i10) {
        return SIMPLE_INDEX.findAll(this.f102560nd, this.address, FieldSearchIndex.SearchCriteria.create(cArr).prefix(true), i10);
    }
}
