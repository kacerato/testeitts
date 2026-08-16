package org.eclipse.jdt.internal.core.search.indexing;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.IProblemFactory;
import org.eclipse.jdt.internal.compiler.ISourceElementRequestor;
import org.eclipse.jdt.internal.compiler.SourceElementParser;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;

public class IndexingParser extends SourceElementParser {
    ImportReference importReference;
    QualifiedNameReference qualifiedNameReference;
    SingleNameReference singleNameReference;

    public IndexingParser(ISourceElementRequestor iSourceElementRequestor, IProblemFactory iProblemFactory, CompilerOptions compilerOptions, boolean z10, boolean z11, boolean z12) {
        super(iSourceElementRequestor, iProblemFactory, compilerOptions, z10, z11, z12);
        this.singleNameReference = new SingleNameReference(CharOperation.NO_CHAR, 0L);
        char[][] cArr = CharOperation.NO_CHAR_CHAR;
        this.qualifiedNameReference = new QualifiedNameReference(cArr, new long[0], 0, 0);
        this.importReference = new ImportReference(cArr, new long[1], false, 0);
    }

    @Override
    public ImportReference newImportReference(char[][] cArr, long[] jArr, boolean z10, int i10) {
        ImportReference importReference = this.importReference;
        importReference.tokens = cArr;
        importReference.sourcePositions = jArr;
        if (z10) {
            importReference.bits |= 131072;
        }
        importReference.sourceEnd = (int) jArr[jArr.length - 1];
        importReference.sourceStart = (int) (jArr[0] >>> 32);
        importReference.modifiers = this.modifiers;
        return importReference;
    }

    @Override
    public QualifiedNameReference newQualifiedNameReference(char[][] cArr, long[] jArr, int i10, int i11) {
        QualifiedNameReference qualifiedNameReference = this.qualifiedNameReference;
        qualifiedNameReference.tokens = cArr;
        qualifiedNameReference.sourcePositions = jArr;
        qualifiedNameReference.sourceStart = i10;
        qualifiedNameReference.sourceEnd = i11;
        return qualifiedNameReference;
    }

    @Override
    public SingleNameReference newSingleNameReference(char[] cArr, long j10) {
        SingleNameReference singleNameReference = this.singleNameReference;
        singleNameReference.token = cArr;
        singleNameReference.sourceStart = (int) (j10 >>> 32);
        singleNameReference.sourceEnd = (int) j10;
        return singleNameReference;
    }
}
