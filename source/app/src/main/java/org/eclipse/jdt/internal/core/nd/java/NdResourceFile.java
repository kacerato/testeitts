package org.eclipse.jdt.internal.core.nd.java;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.core.resources.IWorkspaceRoot;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.Path;
import org.eclipse.jdt.internal.core.nd.Nd;
import org.eclipse.jdt.internal.core.nd.NdNode;
import org.eclipse.jdt.internal.core.nd.db.Database;
import org.eclipse.jdt.internal.core.nd.db.IString;
import org.eclipse.jdt.internal.core.nd.db.IndexException;
import org.eclipse.jdt.internal.core.nd.field.FieldList;
import org.eclipse.jdt.internal.core.nd.field.FieldLong;
import org.eclipse.jdt.internal.core.nd.field.FieldOneToMany;
import org.eclipse.jdt.internal.core.nd.field.FieldSearchIndex;
import org.eclipse.jdt.internal.core.nd.field.FieldSearchKey;
import org.eclipse.jdt.internal.core.nd.field.FieldShort;
import org.eclipse.jdt.internal.core.nd.field.FieldString;
import org.eclipse.jdt.internal.core.nd.field.StructDef;

public class NdResourceFile extends NdNode {
    public static final FieldSearchKey<JavaIndex> FILENAME;
    public static final FieldShort FILE_FLAGS;
    public static final int FLG_CORRUPT_ZIP_FILE = 1;
    public static final FieldLong HASHCODE_LAST_SCANNED;
    public static final FieldString JAVA_ROOT;
    public static final FieldLong JDK_LEVEL;
    public static final FieldString MANIFEST_CONTENT;
    public static final FieldLong SIZE_LAST_SCANNED;
    public static final FieldLong TIME_LAST_SCANNED;
    public static final FieldLong TIME_LAST_USED;
    public static final FieldOneToMany<NdType> TYPES;
    public static final FieldOneToMany<NdWorkspaceLocation> WORKSPACE_MAPPINGS;
    public static final FieldList<NdZipEntry> ZIP_ENTRIES;
    public static final StructDef<NdResourceFile> type;
    private long jdkLevel;

    static {
        StructDef<NdResourceFile> create = StructDef.create(NdResourceFile.class, NdNode.type);
        type = create;
        FILENAME = FieldSearchKey.create(create, JavaIndex.FILES);
        TYPES = FieldOneToMany.create(create, NdType.FILE, 16);
        TIME_LAST_USED = create.addLong();
        TIME_LAST_SCANNED = create.addLong();
        SIZE_LAST_SCANNED = create.addLong();
        HASHCODE_LAST_SCANNED = create.addLong();
        WORKSPACE_MAPPINGS = FieldOneToMany.create(create, NdWorkspaceLocation.RESOURCE);
        JAVA_ROOT = create.addString();
        JDK_LEVEL = create.addLong();
        ZIP_ENTRIES = FieldList.create(create, NdZipEntry.type, 1);
        MANIFEST_CONTENT = create.addString();
        FILE_FLAGS = create.addShort();
        create.done();
    }

    public NdResourceFile(Nd nd2, long j10) {
        super(nd2, j10);
    }

    private long getHashcodeLastScanned() {
        return HASHCODE_LAST_SCANNED.get(getNd(), this.address);
    }

    public NdZipEntry addZipEntry(String str) {
        NdZipEntry append = ZIP_ENTRIES.append(getNd(), getAddress());
        append.setFilename(str);
        return append;
    }

    public void allocateZipEntries(int i10) {
        ZIP_ENTRIES.allocate(this.f102534nd, this.address, i10);
    }

    public List<IPath> getAllWorkspaceLocations() {
        final ArrayList arrayList = new ArrayList();
        WORKSPACE_MAPPINGS.accept(getNd(), this.address, new FieldOneToMany.Visitor<NdWorkspaceLocation>() {
            @Override
            public void visit(int i10, NdWorkspaceLocation ndWorkspaceLocation) {
                arrayList.add(new Path(ndWorkspaceLocation.getPath().getString()));
            }
        });
        return arrayList;
    }

    public IPath getAnyOpenWorkspaceLocation(IWorkspaceRoot iWorkspaceRoot) {
        int size = WORKSPACE_MAPPINGS.size(getNd(), this.address);
        for (int i10 = 0; i10 < size; i10++) {
            Path path = new Path(WORKSPACE_MAPPINGS.get(getNd(), this.address, i10).getPath().getString());
            if (!path.isEmpty() && iWorkspaceRoot.getProject(path.segment(0)).isOpen()) {
                return path;
            }
        }
        return Path.EMPTY;
    }

    public FileFingerprint getFingerprint() {
        return new FileFingerprint(getTimeLastScanned(), getSizeLastScanned(), getHashcodeLastScanned());
    }

    public IPath getFirstWorkspaceLocation() {
        FieldOneToMany<NdWorkspaceLocation> fieldOneToMany = WORKSPACE_MAPPINGS;
        return fieldOneToMany.isEmpty(getNd(), this.address) ? Path.EMPTY : new Path(fieldOneToMany.get(getNd(), this.address, 0).getPath().toString());
    }

    public int getFlags() {
        return FILE_FLAGS.get(getNd(), this.address);
    }

    public long getJdkLevel() {
        if (this.jdkLevel == 0) {
            this.jdkLevel = JDK_LEVEL.get(getNd(), this.address);
        }
        return this.jdkLevel;
    }

    public IString getLocation() {
        return FILENAME.get(getNd(), this.address);
    }

    public IString getManifestContent() {
        return MANIFEST_CONTENT.get(getNd(), getAddress());
    }

    public IString getPackageFragmentRoot() {
        IString iString = JAVA_ROOT.get(getNd(), this.address);
        return iString.length() == 0 ? getLocation() : iString;
    }

    public IPath getPath() {
        IPath firstWorkspaceLocation = getFirstWorkspaceLocation();
        return firstWorkspaceLocation.isEmpty() ? new Path(getLocation().getString()) : firstWorkspaceLocation;
    }

    public long getSizeLastScanned() {
        return SIZE_LAST_SCANNED.get(getNd(), this.address);
    }

    public long getTimeLastScanned() {
        return TIME_LAST_SCANNED.get(getNd(), this.address);
    }

    public long getTimeLastUsed() {
        return TIME_LAST_USED.get(getNd(), this.address);
    }

    public NdType getType(int i10) {
        return TYPES.get(getNd(), this.address, i10);
    }

    public int getTypeCount() {
        return TYPES.size(getNd(), this.address);
    }

    public List<NdType> getTypes() {
        return TYPES.asList(getNd(), this.address);
    }

    public List<NdWorkspaceLocation> getWorkspaceMappings() {
        return WORKSPACE_MAPPINGS.asList(getNd(), this.address);
    }

    public List<NdZipEntry> getZipEntries() {
        return ZIP_ENTRIES.asList(getNd(), getAddress());
    }

    public boolean hasAllFlags(int i10) {
        return (getFlags() & i10) == i10;
    }

    public boolean isCorruptedZipFile() {
        return hasAllFlags(1);
    }

    public boolean isDoneIndexing() {
        return getTimeLastScanned() != 0;
    }

    public boolean isInIndex() {
        try {
            if (this.f102534nd.isValidAddress(this.address) && NdNode.NODE_TYPE.get(this.f102534nd, this.address) == this.f102534nd.getNodeType(getClass())) {
                return equals(JavaIndex.FILES.findBest(this.f102534nd, Database.DATA_AREA_OFFSET, FieldSearchIndex.SearchCriteria.create(FILENAME.get(getNd(), this.address).getChars()), new FieldSearchIndex.IResultRank() {
                    @Override
                    public long getRank(Nd nd2, long j10) {
                        return j10 == NdResourceFile.this.address ? 1L : -1L;
                    }
                }));
            }
            return false;
        } catch (IndexException unused) {
            return false;
        }
    }

    public void markAsInvalid() {
        TIME_LAST_SCANNED.put(getNd(), this.address, 0L);
    }

    public void setFingerprint(FileFingerprint fileFingerprint) {
        TIME_LAST_SCANNED.put(getNd(), this.address, fileFingerprint.getTime());
        HASHCODE_LAST_SCANNED.put(getNd(), this.address, fileFingerprint.getHash());
        SIZE_LAST_SCANNED.put(getNd(), this.address, fileFingerprint.getSize());
    }

    public void setFlags(int i10) {
        FILE_FLAGS.put(getNd(), this.address, (short) (i10 | getFlags()));
    }

    public void setJdkLevel(long j10) {
        if (getJdkLevel() != j10) {
            JDK_LEVEL.put(getNd(), this.address, j10);
        }
    }

    public void setLocation(String str) {
        FILENAME.put(getNd(), this.address, str);
    }

    public void setManifestContent(char[] cArr) {
        MANIFEST_CONTENT.put(getNd(), getAddress(), cArr);
    }

    public void setPackageFragmentRoot(char[] cArr) {
        JAVA_ROOT.put(getNd(), this.address, cArr);
    }

    public void setTimeLastUsed(long j10) {
        TIME_LAST_USED.put(getNd(), this.address, j10);
    }

    public String toString() {
        try {
            return FILENAME.get(getNd(), this.address).toString();
        } catch (RuntimeException unused) {
            return super.toString();
        }
    }

    public NdResourceFile(Nd nd2) {
        super(nd2);
    }
}
