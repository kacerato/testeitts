package org.eclipse.jdt.internal.core.search.indexing;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Map;
import java.util.zip.CRC32;
import org.eclipse.core.resources.IContainer;
import org.eclipse.core.resources.IFile;
import org.eclipse.core.resources.IFolder;
import org.eclipse.core.resources.IProject;
import org.eclipse.core.resources.IResource;
import org.eclipse.core.runtime.IPath;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Path;
import org.eclipse.core.runtime.SubMonitor;
import org.eclipse.jdt.core.IClasspathEntry;
import org.eclipse.jdt.core.IJavaProject;
import org.eclipse.jdt.core.JavaCore;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.search.SearchDocument;
import org.eclipse.jdt.core.search.SearchEngine;
import org.eclipse.jdt.core.search.SearchParticipant;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.parser.JavadocParser;
import org.eclipse.jdt.internal.compiler.problem.DefaultProblemFactory;
import org.eclipse.jdt.internal.compiler.util.JRTUtil;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.core.ClasspathEntry;
import org.eclipse.jdt.internal.core.JavaModel;
import org.eclipse.jdt.internal.core.JavaModelManager;
import org.eclipse.jdt.internal.core.JavaProject;
import org.eclipse.jdt.internal.core.index.DiskIndex;
import org.eclipse.jdt.internal.core.index.FileIndexLocation;
import org.eclipse.jdt.internal.core.index.Index;
import org.eclipse.jdt.internal.core.index.IndexLocation;
import org.eclipse.jdt.internal.core.search.BasicSearchEngine;
import org.eclipse.jdt.internal.core.search.PatternSearchJob;
import org.eclipse.jdt.internal.core.search.processing.IJob;
import org.eclipse.jdt.internal.core.search.processing.JobManager;
import org.eclipse.jdt.internal.core.util.Messages;
import org.eclipse.jdt.internal.core.util.Util;

public class IndexManager extends JobManager implements IIndexConstants {
    public static final Integer SAVED_STATE = 0;
    public static final Integer UPDATING_STATE = 1;
    public static final Integer UNKNOWN_STATE = 2;
    public static final Integer REBUILDING_STATE = 3;
    public static final Integer REUSE_STATE = 4;
    public static final String MANAGE_PRODUCT_INDEXES_PROPERTY = "jdt.core.manageProductIndexes";
    private static final boolean IS_MANAGING_PRODUCT_INDEXES_PROPERTY = Boolean.getBoolean(MANAGE_PRODUCT_INDEXES_PROPERTY);
    public static boolean DEBUG = false;
    public SimpleLookupTable indexLocations = new SimpleLookupTable();
    private SimpleLookupTable indexes = new SimpleLookupTable();
    private boolean needToSave = false;
    private IPath javaPluginLocation = null;
    private SimpleLookupTable indexStates = null;
    private File indexNamesMapFile = new File(getSavedIndexesDirectory(), "indexNamesMap.txt");
    private File participantIndexNamesFile = new File(getSavedIndexesDirectory(), "participantsIndexNames.txt");
    private boolean javaLikeNamesChanged = true;
    private final IndexNamesRegistry nameRegistry = new IndexNamesRegistry(new File(getSavedIndexesDirectory(), "savedIndexNames.txt"), getJavaPluginWorkingLocation());
    private SimpleLookupTable participantsContainers = null;
    private boolean participantUpdated = false;

    private SimpleLookupTable getIndexStates() {
        SimpleLookupTable simpleLookupTable = this.indexStates;
        if (simpleLookupTable != null) {
            return simpleLookupTable;
        }
        this.indexStates = new SimpleLookupTable();
        File savedIndexesDirectory = getSavedIndexesDirectory();
        char[][] read = this.nameRegistry.read(null);
        if (read != null) {
            int length = read.length;
            for (int i10 = 1; i10 < length; i10++) {
                char[] cArr = read[i10];
                if (cArr.length > 0) {
                    FileIndexLocation fileIndexLocation = new FileIndexLocation(new File(savedIndexesDirectory, String.valueOf(cArr)));
                    if (JobManager.VERBOSE) {
                        Util.verbose("Reading saved index file " + ((Object) fileIndexLocation));
                    }
                    this.indexStates.put(fileIndexLocation, SAVED_STATE);
                }
            }
        } else {
            writeJavaLikeNamesFile();
            this.javaLikeNamesChanged = false;
            deleteIndexFiles();
        }
        readIndexMap();
        return this.indexStates;
    }

    private IPath getJavaPluginWorkingLocation() {
        IPath iPath = this.javaPluginLocation;
        if (iPath != null) {
            return iPath;
        }
        IPath stateLocation = JavaCore.getPlugin().getStateLocation();
        this.javaPluginLocation = stateLocation;
        return stateLocation;
    }

    private IPath getParticipantsContainer(IndexLocation indexLocation) {
        if (this.participantsContainers == null) {
            readParticipantsIndexNamesFile();
        }
        return (IPath) this.participantsContainers.get(indexLocation);
    }

    private IndexRequest getRequest(Object obj, IPath iPath, IndexLocation indexLocation, IndexManager indexManager, boolean z10) {
        return isJrt(((File) obj).getName()) ? new AddJrtToIndex(iPath, indexLocation, this, z10) : new AddJarFileToIndex(iPath, indexLocation, this, z10);
    }

    private File getSavedIndexesDirectory() {
        return new File(getJavaPluginWorkingLocation().toOSString());
    }

    private boolean hasJavaLikeNamesChanged() {
        char[][] javaLikeExtensions = Util.getJavaLikeExtensions();
        int length = javaLikeExtensions.length;
        char[][] readJavaLikeNamesFile = readJavaLikeNamesFile();
        if (readJavaLikeNamesFile == null) {
            if (JobManager.VERBOSE && length != 1) {
                Util.verbose("No Java like names found and there is atleast one non-default javaLikeName", System.err);
            }
            return length != 1;
        }
        if (length != readJavaLikeNamesFile.length) {
            if (JobManager.VERBOSE) {
                Util.verbose("Java like names have changed", System.err);
            }
            return true;
        }
        if (length > 1) {
            char[][] cArr = new char[length];
            System.arraycopy(javaLikeExtensions, 0, cArr, 0, length);
            Util.sort(cArr);
            javaLikeExtensions = cArr;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (!CharOperation.equals(javaLikeExtensions[i10], readJavaLikeNamesFile[i10])) {
                if (JobManager.VERBOSE) {
                    Util.verbose("Java like names have changed", System.err);
                }
                return true;
            }
        }
        return false;
    }

    private boolean isJrt(String str) {
        return str != null && str.endsWith(JRTUtil.JRT_FS_JAR);
    }

    private void readIndexMap() {
        try {
            char[][] splitOn = CharOperation.splitOn('\n', org.eclipse.jdt.internal.compiler.util.Util.getFileCharContent(this.indexNamesMapFile, null));
            if (splitOn.length < 3 || !DiskIndex.SIGNATURE.equals(new String(splitOn[0]))) {
                return;
            }
            int length = splitOn.length - 1;
            for (int i10 = 1; i10 < length; i10 += 2) {
                IndexLocation createIndexLocation = IndexLocation.createIndexLocation(new URL(new String(splitOn[i10])));
                if (createIndexLocation != null) {
                    this.indexLocations.put(new Path(new String(splitOn[i10 + 1])), createIndexLocation);
                    this.indexStates.put(createIndexLocation, REUSE_STATE);
                }
            }
        } catch (IOException unused) {
            if (JobManager.VERBOSE) {
                Util.verbose("Failed to read saved index file names");
            }
        }
    }

    private char[][] readJavaLikeNamesFile() {
        File file;
        try {
            file = new File(getJavaPluginWorkingLocation().toOSString(), "javaLikeNames.txt");
        } catch (IOException unused) {
            if (JobManager.VERBOSE) {
                Util.verbose("Failed to read javaLikeNames file");
            }
        }
        if (!file.exists()) {
            return null;
        }
        char[] fileCharContent = org.eclipse.jdt.internal.compiler.util.Util.getFileCharContent(file, null);
        if (fileCharContent.length > 0) {
            return CharOperation.splitOn('\n', fileCharContent);
        }
        return null;
    }

    private void readParticipantsIndexNamesFile() {
        SimpleLookupTable simpleLookupTable = new SimpleLookupTable(3);
        try {
            char[] fileCharContent = org.eclipse.jdt.internal.compiler.util.Util.getFileCharContent(this.participantIndexNamesFile, null);
            if (fileCharContent.length > 0) {
                char[][] splitOn = CharOperation.splitOn('\n', fileCharContent);
                if (splitOn.length >= 3 && DiskIndex.SIGNATURE.equals(new String(splitOn[0]))) {
                    int length = splitOn.length - 1;
                    for (int i10 = 1; i10 < length; i10 += 2) {
                        simpleLookupTable.put(new FileIndexLocation(new File(new String(splitOn[i10])), true), new Path(new String(splitOn[i10 + 1])));
                    }
                }
            }
        } catch (IOException unused) {
            if (JobManager.VERBOSE) {
                Util.verbose("Failed to read participant index file names");
            }
        }
        this.participantsContainers = simpleLookupTable;
    }

    private void rebuildIndex(IndexLocation indexLocation, IPath iPath) {
        rebuildIndex(indexLocation, iPath, false);
    }

    private synchronized void removeIndexesState(IndexLocation[] indexLocationArr) {
        getIndexStates();
        int length = indexLocationArr.length;
        boolean z10 = false;
        for (int i10 = 0; i10 < length; i10++) {
            IndexLocation indexLocation = indexLocationArr[i10];
            if (indexLocation != null && this.indexStates.removeKey(indexLocation) != null) {
                if (JobManager.VERBOSE) {
                    Util.verbose("-> index state updated to: ? for: " + ((Object) indexLocationArr[i10]));
                }
                z10 = true;
            }
        }
        if (z10) {
            writeSavedIndexNamesFile();
            writeIndexMapFile();
        }
    }

    private synchronized void updateIndexState(IndexLocation indexLocation, Integer num) {
        try {
            if (indexLocation == null) {
                throw new IllegalArgumentException();
            }
            getIndexStates();
            if (num != null) {
                if (num.equals(this.indexStates.get(indexLocation))) {
                    return;
                } else {
                    this.indexStates.put(indexLocation, num);
                }
            } else if (!this.indexStates.containsKey(indexLocation)) {
                return;
            } else {
                this.indexStates.removeKey(indexLocation);
            }
            writeSavedIndexNamesFile();
            if (JobManager.VERBOSE) {
                if (num == null) {
                    Util.verbose("-> index state removed for: " + ((Object) indexLocation));
                } else {
                    String str = "?";
                    if (num == SAVED_STATE) {
                        str = "SAVED";
                    } else if (num == UPDATING_STATE) {
                        str = "UPDATING";
                    } else if (num == UNKNOWN_STATE) {
                        str = "UNKNOWN";
                    } else if (num == REBUILDING_STATE) {
                        str = "REBUILDING";
                    } else if (num == REUSE_STATE) {
                        str = "REUSE";
                    }
                    Util.verbose("-> index state updated to: " + str + " for: " + ((Object) indexLocation));
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void writeIndexMapFile() {
        BufferedWriter bufferedWriter;
        Throwable th2;
        IPath iPath;
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                try {
                    bufferedWriter = new BufferedWriter(new FileWriter(this.indexNamesMapFile));
                } catch (Throwable th3) {
                    bufferedWriter = null;
                    th2 = th3;
                }
            } catch (IOException unused) {
            }
            try {
                bufferedWriter.write(DiskIndex.SIGNATURE);
                bufferedWriter.write(10);
                SimpleLookupTable simpleLookupTable = this.indexStates;
                Object[] objArr = simpleLookupTable.keyTable;
                Object[] objArr2 = simpleLookupTable.valueTable;
                int length = objArr2.length;
                for (int i10 = 0; i10 < length; i10++) {
                    IndexLocation indexLocation = (IndexLocation) objArr[i10];
                    if (indexLocation != null && objArr2[i10] == REUSE_STATE && (iPath = (IPath) this.indexLocations.keyForValue(indexLocation)) != null) {
                        bufferedWriter.write(indexLocation.toString());
                        bufferedWriter.write(10);
                        bufferedWriter.write(iPath.toOSString());
                        bufferedWriter.write(10);
                    }
                }
                bufferedWriter.close();
            } catch (IOException unused2) {
                bufferedWriter2 = bufferedWriter;
                if (JobManager.VERBOSE) {
                    Util.verbose("Failed to write saved index file names", System.err);
                }
                if (bufferedWriter2 != null) {
                    bufferedWriter2.close();
                }
            } catch (Throwable th4) {
                th2 = th4;
                if (bufferedWriter != null) {
                    try {
                        bufferedWriter.close();
                    } catch (IOException unused3) {
                    }
                }
                throw th2;
            }
        } catch (IOException unused4) {
        }
    }

    private void writeJavaLikeNamesFile() {
        int i10;
        String oSString = getJavaPluginWorkingLocation().toOSString();
        BufferedWriter bufferedWriter = null;
        try {
            try {
                try {
                    char[][] javaLikeExtensions = Util.getJavaLikeExtensions();
                    int length = javaLikeExtensions.length;
                    int i11 = 0;
                    if (length > 1) {
                        char[][] cArr = new char[length];
                        System.arraycopy(javaLikeExtensions, 0, cArr, 0, length);
                        Util.sort(cArr);
                        javaLikeExtensions = cArr;
                    }
                    BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter(new File(oSString, "javaLikeNames.txt")));
                    while (true) {
                        i10 = length - 1;
                        if (i11 >= i10) {
                            break;
                        }
                        try {
                            bufferedWriter2.write(javaLikeExtensions[i11]);
                            bufferedWriter2.write(10);
                            i11++;
                        } catch (IOException unused) {
                            bufferedWriter = bufferedWriter2;
                            if (JobManager.VERBOSE) {
                                Util.verbose("Failed to write javaLikeNames file", System.err);
                            }
                            if (bufferedWriter != null) {
                                bufferedWriter.close();
                                return;
                            }
                            return;
                        } catch (Throwable th2) {
                            bufferedWriter = bufferedWriter2;
                            th = th2;
                            if (bufferedWriter != null) {
                                try {
                                    bufferedWriter.close();
                                } catch (IOException unused2) {
                                }
                            }
                            throw th;
                        }
                    }
                    if (length > 0) {
                        bufferedWriter2.write(javaLikeExtensions[i10]);
                    }
                    bufferedWriter2.close();
                } catch (IOException unused3) {
                }
            } catch (IOException unused4) {
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private void writeParticipantsIndexNamesFile() {
        BufferedWriter bufferedWriter;
        Throwable th2;
        BufferedWriter bufferedWriter2 = null;
        try {
            try {
                try {
                    bufferedWriter = new BufferedWriter(new FileWriter(this.participantIndexNamesFile));
                } catch (IOException unused) {
                    return;
                }
            } catch (IOException unused2) {
            }
        } catch (Throwable th3) {
            bufferedWriter = bufferedWriter2;
            th2 = th3;
        }
        try {
            bufferedWriter.write(DiskIndex.SIGNATURE);
            bufferedWriter.write(10);
            SimpleLookupTable simpleLookupTable = this.participantsContainers;
            Object[] objArr = simpleLookupTable.keyTable;
            Object[] objArr2 = simpleLookupTable.valueTable;
            int length = objArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                IndexLocation indexLocation = (IndexLocation) objArr[i10];
                if (indexLocation != null) {
                    bufferedWriter.write(indexLocation.getIndexFile().getPath());
                    bufferedWriter.write(10);
                    bufferedWriter.write(((IPath) objArr2[i10]).toOSString());
                    bufferedWriter.write(10);
                }
            }
            bufferedWriter.close();
        } catch (IOException unused3) {
            bufferedWriter2 = bufferedWriter;
            if (JobManager.VERBOSE) {
                Util.verbose("Failed to write participant index file names", System.err);
            }
            if (bufferedWriter2 != null) {
                bufferedWriter2.close();
            }
        } catch (Throwable th4) {
            th2 = th4;
            if (bufferedWriter != null) {
                try {
                    bufferedWriter.close();
                } catch (IOException unused4) {
                }
            }
            throw th2;
        }
    }

    private void writeSavedIndexNamesFile() {
        SimpleLookupTable simpleLookupTable = this.indexStates;
        Object[] objArr = simpleLookupTable.keyTable;
        Object[] objArr2 = simpleLookupTable.valueTable;
        int length = objArr2.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (((IndexLocation) objArr[i11]) != null && objArr2[i11] == SAVED_STATE) {
                i10++;
            }
        }
        char[][] cArr = new char[i10];
        int length2 = objArr2.length;
        int i12 = 0;
        for (int i13 = 0; i13 < length2; i13++) {
            IndexLocation indexLocation = (IndexLocation) objArr[i13];
            if (indexLocation != null && objArr2[i13] == SAVED_STATE) {
                cArr[i12] = indexLocation.fileName().toCharArray();
                i12++;
            }
        }
        this.nameRegistry.write(cArr);
    }

    public synchronized void aboutToUpdateIndex(IPath iPath, Integer num) {
        try {
            IndexLocation computeIndexLocation = computeIndexLocation(iPath);
            Object obj = getIndexStates().get(computeIndexLocation);
            Integer num2 = obj == null ? UNKNOWN_STATE : (Integer) obj;
            if (num2.compareTo(REBUILDING_STATE) >= 0) {
                return;
            }
            int compareTo = num.compareTo(num2);
            if (compareTo > 0) {
                updateIndexState(computeIndexLocation, num);
            } else if (compareTo < 0 && this.indexes.get(computeIndexLocation) == null) {
                rebuildIndex(computeIndexLocation, iPath);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void addBinary(IFile iFile, IPath iPath) {
        if (JavaCore.getPlugin() == null) {
            return;
        }
        SearchParticipant defaultSearchParticipant = SearchEngine.getDefaultSearchParticipant();
        scheduleDocumentIndexing(defaultSearchParticipant.getDocument(iFile.getFullPath().toString()), iPath, computeIndexLocation(iPath), defaultSearchParticipant);
    }

    public synchronized boolean addIndex(IPath iPath, IndexLocation indexLocation) {
        getIndexStates().put(indexLocation, REUSE_STATE);
        this.indexLocations.put(iPath, indexLocation);
        if (getIndex(iPath, indexLocation, true, false) != null) {
            writeIndexMapFile();
            return true;
        }
        indexLocation.close();
        this.indexLocations.put(iPath, null);
        return false;
    }

    public void addSource(IFile iFile, IPath iPath, SourceElementParser sourceElementParser) {
        if (JavaCore.getPlugin() == null) {
            return;
        }
        SearchParticipant defaultSearchParticipant = SearchEngine.getDefaultSearchParticipant();
        SearchDocument document = defaultSearchParticipant.getDocument(iFile.getFullPath().toString());
        document.setParser(sourceElementParser);
        scheduleDocumentIndexing(document, iPath, computeIndexLocation(iPath), defaultSearchParticipant);
    }

    public void cleanUpIndexes() {
        SimpleSet simpleSet = new SimpleSet();
        for (Index index : new PatternSearchJob(null, SearchEngine.getDefaultSearchParticipant(), BasicSearchEngine.createWorkspaceScope(), null).getIndexes(null)) {
            simpleSet.add(index.getIndexLocation());
        }
        SimpleLookupTable simpleLookupTable = this.indexStates;
        if (simpleLookupTable != null) {
            Object[] objArr = simpleLookupTable.keyTable;
            IndexLocation[] indexLocationArr = new IndexLocation[simpleLookupTable.elementSize];
            int i10 = 0;
            for (Object obj : objArr) {
                IndexLocation indexLocation = (IndexLocation) obj;
                if (indexLocation != null && !simpleSet.includes(indexLocation)) {
                    indexLocationArr[i10] = indexLocation;
                    i10++;
                }
            }
            if (i10 > 0) {
                removeIndexesState(indexLocationArr);
            }
        }
        deleteIndexFiles(simpleSet, null);
    }

    public synchronized IndexLocation computeIndexLocation(IPath iPath, URL url) {
        IndexLocation indexLocation;
        try {
            indexLocation = (IndexLocation) this.indexLocations.get(iPath);
            if (indexLocation != null) {
                URL url2 = indexLocation.getUrl();
                if (url != null && !url.equals(url2)) {
                    removeIndex(iPath);
                    indexLocation = (IndexLocation) getIndexStates().getKey(IndexLocation.createIndexLocation(url));
                    this.indexLocations.put(iPath, indexLocation);
                }
            } else if (url != null) {
                indexLocation = (IndexLocation) getIndexStates().getKey(IndexLocation.createIndexLocation(url));
                this.indexLocations.put(iPath, indexLocation);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return indexLocation;
    }

    public final void deleteIndexFiles() {
        deleteIndexFiles(null);
    }

    public synchronized void ensureIndexExists(IndexLocation indexLocation, IPath iPath) {
        if (getIndexStates().get(indexLocation) == null) {
            updateIndexState(indexLocation, REBUILDING_STATE);
            getIndex(iPath, indexLocation, true, true);
        }
    }

    public synchronized Index getIndex(IndexLocation indexLocation) {
        return (Index) this.indexes.get(indexLocation);
    }

    public synchronized Index getIndexForUpdate(IPath iPath, boolean z10, boolean z11) {
        IndexLocation computeIndexLocation = computeIndexLocation(iPath);
        if (getIndexStates().get(computeIndexLocation) != REBUILDING_STATE) {
            return null;
        }
        return getIndex(iPath, computeIndexLocation, z10, z11);
    }

    public Index[] getIndexes(IndexLocation[] indexLocationArr, IProgressMonitor iProgressMonitor) {
        int length = indexLocationArr.length;
        Index[] indexArr = new Index[length];
        if (this.javaLikeNamesChanged) {
            this.javaLikeNamesChanged = hasJavaLikeNamesChanged();
        }
        int i10 = 0;
        for (IndexLocation indexLocation : indexLocationArr) {
            if (iProgressMonitor != null && iProgressMonitor.isCanceled()) {
                throw new OperationCanceledException();
            }
            Index index = getIndex(indexLocation);
            if (index == null) {
                IPath iPath = (IPath) this.indexLocations.keyForValue(indexLocation);
                if (iPath != null) {
                    index = getIndex(iPath, indexLocation, true, false);
                    if (index != null && this.javaLikeNamesChanged && !index.isIndexForJar()) {
                        File indexFile = index.getIndexFile();
                        if (indexFile.exists()) {
                            if (DEBUG) {
                                Util.verbose("Change in javaLikeNames - removing index file for " + ((Object) iPath));
                            }
                            indexFile.delete();
                        }
                        this.indexes.put(indexLocation, null);
                        rebuildIndex(indexLocation, iPath);
                        index = null;
                    }
                } else if (indexLocation.isParticipantIndex() && indexLocation.exists()) {
                    try {
                        IPath participantsContainer = getParticipantsContainer(indexLocation);
                        if (participantsContainer != null) {
                            Index index2 = new Index(indexLocation, participantsContainer.toOSString(), true);
                            try {
                                this.indexes.put(indexLocation, index2);
                            } catch (IOException unused) {
                            }
                            index = index2;
                        }
                    } catch (IOException unused2) {
                    }
                }
            }
            if (index != null) {
                indexArr[i10] = index;
                i10++;
            }
        }
        if (this.javaLikeNamesChanged) {
            writeJavaLikeNamesFile();
            this.javaLikeNamesChanged = false;
        }
        if (i10 >= length) {
            return indexArr;
        }
        Index[] indexArr2 = new Index[i10];
        System.arraycopy(indexArr, 0, indexArr2, 0, i10);
        return indexArr2;
    }

    public SourceElementParser getSourceElementParser(IJavaProject iJavaProject, ISourceElementRequestor iSourceElementRequestor) {
        Map<String, String> options = iJavaProject.getOptions(true);
        options.put("org.eclipse.jdt.core.compiler.taskTags", "");
        IndexingParser indexingParser = new IndexingParser(iSourceElementRequestor, new DefaultProblemFactory(Locale.getDefault()), new CompilerOptions(options), true, true, false);
        indexingParser.reportOnlyOneSyntaxError = true;
        JavadocParser javadocParser = indexingParser.javadocParser;
        javadocParser.checkDocComment = true;
        javadocParser.reportProblems = false;
        return indexingParser;
    }

    public void indexAll(IProject iProject) {
        if (JavaCore.getPlugin() == null) {
            return;
        }
        try {
            disable();
            try {
                for (IClasspathEntry iClasspathEntry : ((JavaProject) JavaModelManager.getJavaModelManager().getJavaModel().getJavaProject((IResource) iProject)).getResolvedClasspath()) {
                    if (iClasspathEntry.getEntryKind() == 1) {
                        indexLibrary(iClasspathEntry.getPath(), iProject, ((ClasspathEntry) iClasspathEntry).getLibraryIndexLocation());
                    }
                }
            } catch (JavaModelException unused) {
            }
            IndexAllProject indexAllProject = new IndexAllProject(iProject, this);
            if (!isJobWaiting(indexAllProject)) {
                request(indexAllProject);
            }
        } finally {
            enable();
        }
    }

    public void indexDocument(SearchDocument searchDocument, SearchParticipant searchParticipant, Index index, IPath iPath) {
        try {
            searchDocument.setIndex(index);
            searchParticipant.indexDocument(searchDocument, iPath);
        } finally {
            searchDocument.setIndex(null);
        }
    }

    public void indexLibrary(IPath iPath, IProject iProject, URL url) {
        indexLibrary(iPath, iProject, url, false);
    }

    public void indexResolvedDocument(SearchDocument searchDocument, SearchParticipant searchParticipant, Index index, IPath iPath) {
        searchParticipant.resolveDocument(searchDocument);
        ReadWriteMonitor readWriteMonitor = index.monitor;
        if (readWriteMonitor == null) {
            return;
        }
        try {
            readWriteMonitor.enterWrite();
            searchDocument.setIndex(index);
            searchParticipant.indexResolvedDocument(searchDocument, iPath);
        } finally {
            searchDocument.setIndex(null);
            readWriteMonitor.exitWrite();
        }
    }

    public void indexSourceFolder(JavaProject javaProject, IPath iPath, char[][] cArr, char[][] cArr2) {
        IProject project = javaProject.getProject();
        if (this.jobEnd <= this.jobStart || !isJobWaiting(new IndexAllProject(project, this))) {
            request(new AddFolderToIndex(iPath, project, cArr, cArr2, this));
        }
    }

    public synchronized void jobWasCancelled(IPath iPath) {
        try {
            IndexLocation computeIndexLocation = computeIndexLocation(iPath);
            Index index = getIndex(computeIndexLocation);
            if (index != null) {
                index.monitor = null;
                this.indexes.removeKey(computeIndexLocation);
            }
            updateIndexState(computeIndexLocation, UNKNOWN_STATE);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override
    public synchronized void moveToNextJob() {
        this.needToSave = true;
        super.moveToNextJob();
    }

    @Override
    public void notifyIdle(long j10) {
        if (j10 <= 1000 || !this.needToSave) {
            return;
        }
        saveIndexes();
    }

    @Override
    public String processName() {
        return Messages.process_name;
    }

    public synchronized Index recreateIndex(IPath iPath) {
        Index index;
        try {
            String obj = iPath.getDevice() == null ? iPath.toString() : iPath.toOSString();
            try {
                IndexLocation computeIndexLocation = computeIndexLocation(iPath);
                Index index2 = getIndex(computeIndexLocation);
                ReadWriteMonitor readWriteMonitor = index2 == null ? null : index2.monitor;
                if (JobManager.VERBOSE) {
                    Util.verbose("-> recreating index: " + ((Object) computeIndexLocation) + " for path: " + obj);
                }
                index = new Index(computeIndexLocation, obj, false);
                this.indexes.put(computeIndexLocation, index);
                index.monitor = readWriteMonitor;
            } catch (IOException e10) {
                if (JobManager.VERBOSE) {
                    Util.verbose("-> failed to recreate index for path: " + obj);
                    e10.printStackTrace();
                }
                return null;
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return index;
    }

    public void remove(String str, IPath iPath) {
        request(new RemoveFromIndex(str, iPath, this));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0029 A[Catch: all -> 0x000a, TryCatch #0 {all -> 0x000a, blocks: (B:3:0x0001, B:5:0x0005, B:8:0x001e, B:10:0x0029, B:12:0x0033, B:13:0x0037, B:15:0x0041, B:16:0x006a, B:18:0x0073, B:19:0x0078, B:25:0x004c, B:27:0x0052, B:29:0x0056, B:30:0x0067, B:32:0x000d), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0033 A[Catch: all -> 0x000a, TryCatch #0 {all -> 0x000a, blocks: (B:3:0x0001, B:5:0x0005, B:8:0x001e, B:10:0x0029, B:12:0x0033, B:13:0x0037, B:15:0x0041, B:16:0x006a, B:18:0x0073, B:19:0x0078, B:25:0x004c, B:27:0x0052, B:29:0x0056, B:30:0x0067, B:32:0x000d), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0041 A[Catch: all -> 0x000a, TryCatch #0 {all -> 0x000a, blocks: (B:3:0x0001, B:5:0x0005, B:8:0x001e, B:10:0x0029, B:12:0x0033, B:13:0x0037, B:15:0x0041, B:16:0x006a, B:18:0x0073, B:19:0x0078, B:25:0x004c, B:27:0x0052, B:29:0x0056, B:30:0x0067, B:32:0x000d), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0073 A[Catch: all -> 0x000a, TryCatch #0 {all -> 0x000a, blocks: (B:3:0x0001, B:5:0x0005, B:8:0x001e, B:10:0x0029, B:12:0x0033, B:13:0x0037, B:15:0x0041, B:16:0x006a, B:18:0x0073, B:19:0x0078, B:25:0x004c, B:27:0x0052, B:29:0x0056, B:30:0x0067, B:32:0x000d), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void removeIndex(IPath iPath) {
        IndexLocation computeIndexLocation;
        Index index;
        File file;
        try {
            if (!JobManager.VERBOSE) {
                if (DEBUG) {
                }
                computeIndexLocation = computeIndexLocation(iPath);
                index = getIndex(computeIndexLocation);
                if (index == null) {
                    index.monitor = null;
                    file = index.getIndexFile();
                } else {
                    file = null;
                }
                if (file == null) {
                    file = computeIndexLocation.getIndexFile();
                }
                if (this.indexStates.get(computeIndexLocation) != REUSE_STATE) {
                    computeIndexLocation.close();
                    this.indexLocations.put(iPath, null);
                } else if (file != null && file.exists()) {
                    if (DEBUG) {
                        Util.verbose("removing index file " + ((Object) file));
                    }
                    file.delete();
                }
                this.indexes.removeKey(computeIndexLocation);
                if (IS_MANAGING_PRODUCT_INDEXES_PROPERTY) {
                    this.indexLocations.removeKey(iPath);
                }
                updateIndexState(computeIndexLocation, null);
            }
            Util.verbose("removing index " + ((Object) iPath));
            computeIndexLocation = computeIndexLocation(iPath);
            index = getIndex(computeIndexLocation);
            if (index == null) {
            }
            if (file == null) {
            }
            if (this.indexStates.get(computeIndexLocation) != REUSE_STATE) {
            }
            this.indexes.removeKey(computeIndexLocation);
            if (IS_MANAGING_PRODUCT_INDEXES_PROPERTY) {
            }
            updateIndexState(computeIndexLocation, null);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void removeIndexFamily(IPath iPath) {
        ArrayList arrayList = null;
        for (Object obj : this.indexLocations.keyTable) {
            IPath iPath2 = (IPath) obj;
            if (iPath2 != null && iPath.isPrefixOf(iPath2)) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(iPath2);
            }
        }
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                removeIndex((IPath) arrayList.get(i10));
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0064 A[Catch: all -> 0x000a, TRY_ENTER, TryCatch #0 {all -> 0x000a, blocks: (B:3:0x0001, B:5:0x0005, B:8:0x001e, B:38:0x0033, B:50:0x003f, B:42:0x0043, B:44:0x004d, B:46:0x0055, B:35:0x0058, B:10:0x0064, B:14:0x00a9, B:15:0x006b, B:17:0x0071, B:19:0x0079, B:20:0x007b, B:22:0x0089, B:25:0x008d, B:27:0x0091, B:28:0x00a2, B:29:0x00a7, B:55:0x000d), top: B:2:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0030  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized void removeIndexPath(IPath iPath) {
        int length;
        IndexLocation[] indexLocationArr;
        int i10;
        try {
            if (!JobManager.VERBOSE) {
                if (DEBUG) {
                }
                SimpleLookupTable simpleLookupTable = this.indexes;
                Object[] objArr = simpleLookupTable.keyTable;
                Object[] objArr2 = simpleLookupTable.valueTable;
                int i11 = simpleLookupTable.elementSize;
                length = objArr.length;
                indexLocationArr = null;
                int i12 = 0;
                for (i10 = 0; i10 < length; i10++) {
                    IndexLocation indexLocation = (IndexLocation) objArr[i10];
                    if (indexLocation != null) {
                        if (indexLocation.startsWith(iPath)) {
                            ((Index) objArr2[i10]).monitor = null;
                            if (indexLocationArr == null) {
                                indexLocationArr = new IndexLocation[i11];
                            }
                            int i13 = i12 + 1;
                            indexLocationArr[i12] = indexLocation;
                            if (this.indexStates.get(indexLocation) == REUSE_STATE) {
                                indexLocation.close();
                            } else {
                                if (DEBUG) {
                                    Util.verbose("removing index file " + ((Object) indexLocation));
                                }
                                indexLocation.delete();
                            }
                            i12 = i13;
                        } else {
                            i11--;
                        }
                    }
                }
                if (indexLocationArr != null) {
                    for (int i14 = 0; i14 < i12; i14++) {
                        this.indexes.removeKey(indexLocationArr[i14]);
                    }
                    removeIndexesState(indexLocationArr);
                    if (this.participantsContainers != null) {
                        boolean z10 = false;
                        for (int i15 = 0; i15 < i12; i15++) {
                            if (this.participantsContainers.get(indexLocationArr[i15]) != null) {
                                this.participantsContainers.removeKey(indexLocationArr[i15]);
                                z10 = true;
                            }
                        }
                        if (z10) {
                            writeParticipantsIndexNamesFile();
                        }
                    }
                }
            }
            Util.verbose("removing index path " + ((Object) iPath));
            SimpleLookupTable simpleLookupTable2 = this.indexes;
            Object[] objArr3 = simpleLookupTable2.keyTable;
            Object[] objArr22 = simpleLookupTable2.valueTable;
            int i112 = simpleLookupTable2.elementSize;
            length = objArr3.length;
            indexLocationArr = null;
            int i122 = 0;
            while (i10 < length) {
            }
            if (indexLocationArr != null) {
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void removeSourceFolderFromIndex(JavaProject javaProject, IPath iPath, char[][] cArr, char[][] cArr2) {
        IProject project = javaProject.getProject();
        if (this.jobEnd <= this.jobStart || !isJobWaiting(new IndexAllProject(project, this))) {
            request(new RemoveFolderFromIndex(iPath, cArr, cArr2, project, this));
        }
    }

    @Override
    public void reset() {
        super.reset();
        synchronized (this) {
            try {
                if (this.indexes != null) {
                    this.indexes = new SimpleLookupTable();
                    this.indexStates = null;
                }
                this.indexLocations = new SimpleLookupTable();
                this.javaPluginLocation = null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public synchronized boolean resetIndex(IPath iPath) {
        try {
            String obj = iPath.getDevice() == null ? iPath.toString() : iPath.toOSString();
            try {
                IndexLocation computeIndexLocation = computeIndexLocation(iPath);
                Index index = getIndex(computeIndexLocation);
                if (JobManager.VERBOSE) {
                    Util.verbose("-> reseting index: " + ((Object) computeIndexLocation) + " for path: " + obj);
                }
                if (index == null) {
                    return recreateIndex(iPath) != null;
                }
                index.reset();
                return true;
            } catch (IOException e10) {
                if (JobManager.VERBOSE) {
                    Util.verbose("-> failed to reset index for path: " + obj);
                    e10.printStackTrace();
                }
                return false;
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void saveIndex(Index index) throws IOException {
        if (index.hasChanged()) {
            if (JobManager.VERBOSE) {
                Util.verbose("-> saving index " + ((Object) index.getIndexLocation()));
            }
            index.save();
        }
        synchronized (this) {
            try {
                Path path = new Path(index.containerPath);
                int i10 = this.jobEnd;
                if (i10 > this.jobStart) {
                    while (i10 > this.jobStart) {
                        IJob iJob = this.awaitingJobs[i10];
                        if ((iJob instanceof IndexRequest) && ((IndexRequest) iJob).containerPath.equals(path)) {
                            return;
                        } else {
                            i10--;
                        }
                    }
                }
                updateIndexState(computeIndexLocation(path), SAVED_STATE);
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public void saveIndexes() {
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            for (Object obj : this.indexes.valueTable) {
                Index index = (Index) obj;
                if (index != null) {
                    arrayList.add(index);
                }
            }
        }
        int size = arrayList.size();
        boolean z10 = true;
        for (int i10 = 0; i10 < size; i10++) {
            Index index2 = (Index) arrayList.get(i10);
            ReadWriteMonitor readWriteMonitor = index2.monitor;
            if (readWriteMonitor != null) {
                try {
                    readWriteMonitor.enterRead();
                    if (index2.hasChanged()) {
                        if (readWriteMonitor.exitReadEnterWrite()) {
                            try {
                                try {
                                    saveIndex(index2);
                                } catch (IOException e10) {
                                    if (JobManager.VERBOSE) {
                                        Util.verbose("-> got the following exception while saving:", System.err);
                                        e10.printStackTrace();
                                    }
                                    readWriteMonitor.exitWriteEnterRead();
                                }
                            } finally {
                            }
                        }
                        z10 = false;
                    }
                } finally {
                    readWriteMonitor.exitRead();
                }
            }
        }
        if (this.participantsContainers != null && this.participantUpdated) {
            writeParticipantsIndexNamesFile();
            this.participantUpdated = false;
        }
        this.needToSave = !z10;
    }

    public void savePreBuiltIndex(Index index) throws IOException {
        if (index.hasChanged()) {
            if (JobManager.VERBOSE) {
                Util.verbose("-> saving pre-build index " + ((Object) index.getIndexLocation()));
            }
            index.save();
        }
        synchronized (this) {
            updateIndexState(index.getIndexLocation(), REUSE_STATE);
        }
    }

    public void scheduleDocumentIndexing(final SearchDocument searchDocument, IPath iPath, final IndexLocation indexLocation, final SearchParticipant searchParticipant) {
        request(new IndexRequest(iPath, this) {
            @Override
            public boolean execute(IProgressMonitor iProgressMonitor) {
                Index index;
                ReadWriteMonitor readWriteMonitor;
                if (this.isCancelled || ((iProgressMonitor != null && iProgressMonitor.isCanceled()) || (index = IndexManager.this.getIndex(this.containerPath, indexLocation, true, true)) == null || (readWriteMonitor = index.monitor) == null)) {
                    return true;
                }
                IPath path = new Path(indexLocation.getCanonicalFilePath());
                try {
                    readWriteMonitor.enterWrite();
                    IndexManager.this.indexDocument(searchDocument, searchParticipant, index, path);
                    readWriteMonitor.exitWrite();
                    if (searchDocument.shouldIndexResolvedDocument()) {
                        IndexManager.this.indexResolvedDocument(searchDocument, searchParticipant, index, path);
                    }
                    return true;
                } catch (Throwable th2) {
                    readWriteMonitor.exitWrite();
                    throw th2;
                }
            }

            public String toString() {
                return "indexing " + searchDocument.getPath();
            }

            @Override
            public boolean waitNeeded() {
                return false;
            }
        });
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append(super.toString());
        stringBuffer.append("In-memory indexes:\n");
        int i10 = 0;
        for (Object obj : this.indexes.valueTable) {
            Index index = (Index) obj;
            if (index != null) {
                i10++;
                stringBuffer.append(i10);
                stringBuffer.append(" - ");
                stringBuffer.append(index.toString());
                stringBuffer.append('\n');
            }
        }
        return stringBuffer.toString();
    }

    public void updateParticipant(IPath iPath, IPath iPath2) {
        if (this.participantsContainers == null) {
            readParticipantsIndexNamesFile();
        }
        FileIndexLocation fileIndexLocation = new FileIndexLocation(iPath.toFile(), true);
        if (this.participantsContainers.get(fileIndexLocation) == null) {
            this.participantsContainers.put(fileIndexLocation, iPath2);
            this.participantUpdated = true;
        }
    }

    private void rebuildIndex(IndexLocation indexLocation, IPath iPath, boolean z10) {
        IJob addJarFileToIndex;
        Object target = JavaModel.getTarget(iPath, true);
        if (target == null) {
            return;
        }
        if (JobManager.VERBOSE) {
            Util.verbose("-> request to rebuild index: " + ((Object) indexLocation) + " path: " + ((Object) iPath));
        }
        updateIndexState(indexLocation, REBUILDING_STATE);
        IJob iJob = null;
        if (target instanceof IProject) {
            IProject iProject = (IProject) target;
            if (JavaProject.hasJavaNature(iProject)) {
                iJob = new IndexAllProject(iProject, this);
            }
        } else if (target instanceof IFolder) {
            iJob = new IndexBinaryFolder((IFolder) target, this);
        } else if (target instanceof IFile) {
            IFile iFile = (IFile) target;
            if (isJrt(iFile.getFullPath().toOSString())) {
                addJarFileToIndex = new AddJrtToIndex(iFile, (IndexLocation) null, this, z10);
            } else {
                addJarFileToIndex = new AddJarFileToIndex(iFile, (IndexLocation) null, this, z10);
            }
            iJob = addJarFileToIndex;
        } else if (target instanceof File) {
            iJob = getRequest(target, iPath, null, this, z10);
        }
        if (iJob != null) {
            request(iJob);
        }
    }

    public void deleteIndexFiles(IProgressMonitor iProgressMonitor) {
        if (DEBUG) {
            Util.verbose("Deleting index files");
        }
        this.nameRegistry.delete();
        deleteIndexFiles(null, iProgressMonitor);
    }

    public synchronized Index getIndex(IPath iPath, boolean z10, boolean z11) {
        return getIndex(iPath, computeIndexLocation(iPath), z10, z11);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0029 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void indexLibrary(IPath iPath, IProject iProject, URL url, boolean z10) {
        IndexLocation indexLocation;
        IndexLocation indexLocation2;
        boolean z11;
        IJob indexBinaryFolder;
        if (url == null) {
            indexLocation = null;
        } else {
            if (IS_MANAGING_PRODUCT_INDEXES_PROPERTY) {
                IndexLocation computeIndexLocation = computeIndexLocation(iPath, url);
                if (z10 || computeIndexLocation.exists()) {
                    indexLocation2 = computeIndexLocation;
                    z11 = z10;
                } else {
                    z11 = true;
                    indexLocation2 = computeIndexLocation;
                }
                if (JavaCore.getPlugin() != null) {
                    return;
                }
                Object target = JavaModel.getTarget(iPath, true);
                if (target instanceof IFile) {
                    IFile iFile = (IFile) target;
                    if (isJrt(iFile.getFullPath().toOSString())) {
                        indexBinaryFolder = new AddJrtToIndex(iFile, indexLocation2, this, z11);
                    } else {
                        indexBinaryFolder = new AddJarFileToIndex(iFile, indexLocation2, this, z11);
                    }
                } else if (target instanceof File) {
                    indexBinaryFolder = getRequest(target, iPath, indexLocation2, this, z11);
                } else if (!(target instanceof IContainer)) {
                    return;
                } else {
                    indexBinaryFolder = new IndexBinaryFolder((IContainer) target, this);
                }
                if (isJobWaiting(indexBinaryFolder)) {
                    return;
                }
                request(indexBinaryFolder);
                return;
            }
            indexLocation = IndexLocation.createIndexLocation(url);
        }
        indexLocation2 = indexLocation;
        z11 = false;
        if (JavaCore.getPlugin() != null) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0076 A[Catch: all -> 0x0014, TRY_LEAVE, TryCatch #2 {all -> 0x0014, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x0011, B:8:0x0019, B:10:0x001e, B:14:0x0023, B:16:0x0029, B:18:0x0034, B:38:0x003b, B:40:0x0040, B:21:0x0072, B:23:0x0076, B:26:0x007b, B:28:0x007f, B:30:0x0083, B:31:0x009c, B:33:0x00a0, B:36:0x00ad, B:45:0x0048, B:47:0x004c, B:49:0x0050, B:51:0x0054, B:52:0x006d, B:59:0x00b4, B:61:0x00b8, B:62:0x00d1, B:66:0x00de, B:68:0x00e2, B:70:0x002e, B:71:0x0017), top: B:2:0x0001, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x007b A[Catch: all -> 0x0014, TRY_ENTER, TryCatch #2 {all -> 0x0014, blocks: (B:3:0x0001, B:5:0x0007, B:7:0x0011, B:8:0x0019, B:10:0x001e, B:14:0x0023, B:16:0x0029, B:18:0x0034, B:38:0x003b, B:40:0x0040, B:21:0x0072, B:23:0x0076, B:26:0x007b, B:28:0x007f, B:30:0x0083, B:31:0x009c, B:33:0x00a0, B:36:0x00ad, B:45:0x0048, B:47:0x004c, B:49:0x0050, B:51:0x0054, B:52:0x006d, B:59:0x00b4, B:61:0x00b8, B:62:0x00d1, B:66:0x00de, B:68:0x00e2, B:70:0x002e, B:71:0x0017), top: B:2:0x0001, inners: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public synchronized Index getIndex(IPath iPath, IndexLocation indexLocation, boolean z10, boolean z11) {
        try {
            Index index = getIndex(indexLocation);
            if (index == null) {
                Object obj = getIndexStates().get(indexLocation);
                Integer num = obj == null ? UNKNOWN_STATE : (Integer) obj;
                if (num == UNKNOWN_STATE) {
                    rebuildIndex(indexLocation, iPath);
                    return null;
                }
                String obj2 = iPath.getDevice() == null ? iPath.toString() : iPath.toOSString();
                if (z10) {
                    if (indexLocation.exists()) {
                        try {
                            Index index2 = new Index(indexLocation, obj2, true);
                            try {
                                this.indexes.put(indexLocation, index2);
                                return index2;
                            } catch (IOException unused) {
                                index = index2;
                                if (num != REBUILDING_STATE && num != REUSE_STATE) {
                                    if (JobManager.VERBOSE) {
                                        Util.verbose("-> cannot reuse existing index: " + ((Object) indexLocation) + " path: " + obj2);
                                    }
                                    rebuildIndex(indexLocation, iPath);
                                    return null;
                                }
                                if (num != SAVED_STATE) {
                                }
                            }
                        } catch (IOException unused2) {
                        }
                    }
                    if (num != SAVED_STATE) {
                        rebuildIndex(indexLocation, iPath);
                        return null;
                    }
                    if (num == REUSE_STATE) {
                        if (JobManager.VERBOSE) {
                            Util.verbose("-> cannot reuse given index: " + ((Object) indexLocation) + " path: " + obj2);
                        }
                        if (!IS_MANAGING_PRODUCT_INDEXES_PROPERTY) {
                            this.indexLocations.put(iPath, null);
                            rebuildIndex(computeIndexLocation(iPath), iPath);
                        } else {
                            rebuildIndex(indexLocation, iPath, true);
                        }
                        return null;
                    }
                }
                if (z11) {
                    try {
                        if (JobManager.VERBOSE) {
                            Util.verbose("-> create empty index: " + ((Object) indexLocation) + " path: " + obj2);
                        }
                        Index index3 = new Index(indexLocation, obj2, false);
                        this.indexes.put(indexLocation, index3);
                        return index3;
                    } catch (IOException unused3) {
                        if (JobManager.VERBOSE) {
                            Util.verbose("-> unable to create empty index: " + ((Object) indexLocation) + " path: " + obj2);
                        }
                        return null;
                    }
                }
            }
            return index;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void deleteIndexFiles(SimpleSet simpleSet, IProgressMonitor iProgressMonitor) {
        File[] listFiles = getSavedIndexesDirectory().listFiles();
        if (listFiles == null) {
            return;
        }
        SubMonitor convert = SubMonitor.convert(iProgressMonitor, listFiles.length);
        int length = listFiles.length;
        for (int i10 = 0; i10 < length; i10++) {
            convert.split(1);
            String absolutePath = listFiles[i10].getAbsolutePath();
            if ((simpleSet == null || !simpleSet.includes(new FileIndexLocation(listFiles[i10]))) && absolutePath.regionMatches(true, absolutePath.length() - 6, ".index", 0, 6)) {
                if (JobManager.VERBOSE || DEBUG) {
                    Util.verbose("Deleting index file " + ((Object) listFiles[i10]));
                }
                listFiles[i10].delete();
            }
        }
    }

    public synchronized IndexLocation computeIndexLocation(IPath iPath) {
        IndexLocation indexLocation;
        try {
            indexLocation = (IndexLocation) this.indexLocations.get(iPath);
            if (indexLocation == null) {
                String oSString = iPath.toOSString();
                CRC32 crc32 = new CRC32();
                crc32.update(oSString.getBytes());
                String str = String.valueOf(Long.toString(crc32.getValue())) + ".index";
                if (JobManager.VERBOSE) {
                    Util.verbose("-> index name for " + oSString + " is " + str);
                }
                indexLocation = (IndexLocation) getIndexStates().getKey(new FileIndexLocation(new File(getSavedIndexesDirectory(), str)));
                this.indexLocations.put(iPath, indexLocation);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return indexLocation;
    }
}
