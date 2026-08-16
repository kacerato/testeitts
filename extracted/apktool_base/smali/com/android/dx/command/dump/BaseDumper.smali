.class public abstract Lcom/android/dx/command/dump/BaseDumper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/dx/cf/iface/ParseObserver;


# instance fields
.field protected args:Lcom/android/dx/command/dump/Args;

.field private at:I

.field private final bytes:[B

.field protected final dexOptions:Lcom/android/dx/dex/DexOptions;

.field private final filePath:Ljava/lang/String;

.field private final hexCols:I

.field private indent:I

.field private final out:Ljava/io/PrintStream;

.field private final rawBytes:Z

.field private separator:Ljava/lang/String;

.field private final strictParse:Z

.field private final width:I


# direct methods
.method public constructor <init>([BLjava/io/PrintStream;Ljava/lang/String;Lcom/android/dx/command/dump/Args;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/dx/command/dump/BaseDumper;->bytes:[B

    iget-boolean p1, p4, Lcom/android/dx/command/dump/Args;->rawBytes:Z

    iput-boolean p1, p0, Lcom/android/dx/command/dump/BaseDumper;->rawBytes:Z

    iput-object p2, p0, Lcom/android/dx/command/dump/BaseDumper;->out:Ljava/io/PrintStream;

    iget p2, p4, Lcom/android/dx/command/dump/Args;->width:I

    if-gtz p2, :cond_0

    const/16 p2, 0x4f

    :cond_0
    iput p2, p0, Lcom/android/dx/command/dump/BaseDumper;->width:I

    iput-object p3, p0, Lcom/android/dx/command/dump/BaseDumper;->filePath:Ljava/lang/String;

    iget-boolean p3, p4, Lcom/android/dx/command/dump/Args;->strictParse:Z

    iput-boolean p3, p0, Lcom/android/dx/command/dump/BaseDumper;->strictParse:Z

    const/4 p3, 0x0

    iput p3, p0, Lcom/android/dx/command/dump/BaseDumper;->indent:I

    if-eqz p1, :cond_1

    const-string p1, "|"

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    iput p3, p0, Lcom/android/dx/command/dump/BaseDumper;->at:I

    iput-object p4, p0, Lcom/android/dx/command/dump/BaseDumper;->args:Lcom/android/dx/command/dump/Args;

    new-instance p1, Lcom/android/dx/dex/DexOptions;

    invoke-direct {p1}, Lcom/android/dx/dex/DexOptions;-><init>()V

    iput-object p1, p0, Lcom/android/dx/command/dump/BaseDumper;->dexOptions:Lcom/android/dx/dex/DexOptions;

    add-int/lit8 p2, p2, -0x5

    div-int/lit8 p2, p2, 0xf

    add-int/lit8 p2, p2, 0x1

    and-int/lit8 p1, p2, -0x2

    const/4 p2, 0x6

    if-ge p1, p2, :cond_2

    :goto_1
    move p1, p2

    goto :goto_2

    :cond_2
    const/16 p2, 0xa

    if-le p1, p2, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    iput p1, p0, Lcom/android/dx/command/dump/BaseDumper;->hexCols:I

    return-void
.end method

.method public static computeParamWidth(Lcom/android/dx/cf/code/ConcreteMethod;Z)I
    .locals 0

    invoke-virtual {p0}, Lcom/android/dx/cf/code/ConcreteMethod;->getEffectiveDescriptor()Lcom/android/dx/rop/type/Prototype;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/dx/rop/type/Prototype;->getParameterTypes()Lcom/android/dx/rop/type/StdTypeList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/dx/rop/type/StdTypeList;->getWordCount()I

    move-result p0

    return p0
.end method


# virtual methods
.method public changeIndent(I)V
    .locals 2

    iget v0, p0, Lcom/android/dx/command/dump/BaseDumper;->indent:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/dx/command/dump/BaseDumper;->indent:I

    iget-boolean p1, p0, Lcom/android/dx/command/dump/BaseDumper;->rawBytes:Z

    if-eqz p1, :cond_0

    const-string p1, "|"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    const/4 p1, 0x0

    :goto_1
    iget v0, p0, Lcom/android/dx/command/dump/BaseDumper;->indent:I

    if-ge p1, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public endParsingMember(Lcom/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;Lcom/android/dx/cf/iface/Member;)V
    .locals 0

    return-void
.end method

.method public final getAt()I
    .locals 1

    iget v0, p0, Lcom/android/dx/command/dump/BaseDumper;->at:I

    return v0
.end method

.method public final getBytes()[B
    .locals 1

    iget-object v0, p0, Lcom/android/dx/command/dump/BaseDumper;->bytes:[B

    return-object v0
.end method

.method public final getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/dx/command/dump/BaseDumper;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public final getRawBytes()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dx/command/dump/BaseDumper;->rawBytes:Z

    return v0
.end method

.method public final getStrictParse()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/dx/command/dump/BaseDumper;->strictParse:Z

    return v0
.end method

.method public final getWidth1()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/dx/command/dump/BaseDumper;->rawBytes:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/dx/command/dump/BaseDumper;->hexCols:I

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getWidth2()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/dx/command/dump/BaseDumper;->rawBytes:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/dx/command/dump/BaseDumper;->getWidth1()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/dx/command/dump/BaseDumper;->width:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/android/dx/command/dump/BaseDumper;->indent:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    return v1
.end method

.method public final hexDump(II)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/android/dx/command/dump/BaseDumper;->bytes:[B

    iget v4, p0, Lcom/android/dx/command/dump/BaseDumper;->hexCols:I

    const/4 v5, 0x4

    move v1, p1

    move v2, p2

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/dx/util/Hex;->dump([BIIIII)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parsed(Lcom/android/dx/util/ByteArray;IILjava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/dx/command/dump/BaseDumper;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/dx/util/ByteArray;->underlyingOffset(I[B)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/dx/command/dump/BaseDumper;->getRawBytes()Z

    move-result p2

    iget v0, p0, Lcom/android/dx/command/dump/BaseDumper;->at:I

    const-string v1, ""

    const-string v2, ">"

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<dump skipped backwards to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dx/command/dump/BaseDumper;->println(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/dx/command/dump/BaseDumper;->at:I

    goto :goto_1

    :cond_0
    if-le p1, v0, :cond_2

    if-eqz p2, :cond_1

    sub-int v3, p1, v0

    invoke-virtual {p0, v0, v3}, Lcom/android/dx/command/dump/BaseDumper;->hexDump(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<skipped to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/dx/util/Hex;->u4(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/dx/command/dump/BaseDumper;->twoColumns(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/dx/command/dump/BaseDumper;->print(Ljava/lang/String;)V

    iput p1, p0, Lcom/android/dx/command/dump/BaseDumper;->at:I

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    invoke-virtual {p0, p1, p3}, Lcom/android/dx/command/dump/BaseDumper;->hexDump(II)Ljava/lang/String;

    move-result-object v1

    :cond_3
    invoke-virtual {p0, v1, p4}, Lcom/android/dx/command/dump/BaseDumper;->twoColumns(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/dx/command/dump/BaseDumper;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/dx/command/dump/BaseDumper;->at:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/dx/command/dump/BaseDumper;->at:I

    return-void
.end method

.method public final print(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/command/dump/BaseDumper;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    return-void
.end method

.method public final println(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/command/dump/BaseDumper;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final setAt(Lcom/android/dx/util/ByteArray;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/dx/command/dump/BaseDumper;->bytes:[B

    invoke-virtual {p1, p2, v0}, Lcom/android/dx/util/ByteArray;->underlyingOffset(I[B)I

    move-result p1

    iput p1, p0, Lcom/android/dx/command/dump/BaseDumper;->at:I

    return-void
.end method

.method public startParsingMember(Lcom/android/dx/util/ByteArray;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final twoColumns(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/dx/command/dump/BaseDumper;->getWidth1()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/dx/command/dump/BaseDumper;->getWidth2()I

    move-result v1

    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    new-instance v0, Ljava/io/StringWriter;

    mul-int/lit8 v2, p1, 0x2

    invoke-direct {v0, v2}, Ljava/io/StringWriter;-><init>(I)V

    new-instance v2, Lcom/android/dx/util/IndentingWriter;

    iget-object v3, p0, Lcom/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    invoke-direct {v2, v0, v1, v3}, Lcom/android/dx/util/IndentingWriter;-><init>(Ljava/io/Writer;ILjava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0xa

    if-eqz p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-eq p1, v1, :cond_1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/dx/util/IndentingWriter;->write(I)V

    :cond_1
    invoke-virtual {v2}, Ljava/io/Writer;->flush()V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    iget-object v2, p0, Lcom/android/dx/command/dump/BaseDumper;->separator:Ljava/lang/String;

    invoke-static {p1, v0, v2, p2, v1}, Lcom/android/dx/util/TwoColumnOutput;->toString(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
