.class public Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/relocator/RelocatorCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final synthetic j:Z = true


# instance fields
.field private final a:Lcom/android/tools/r8/utils/i$a;

.field private final b:Lcom/android/tools/r8/internal/Ef0;

.field private final c:Lcom/android/tools/r8/internal/kC;

.field private final d:Lcom/android/tools/r8/internal/kC;

.field private final e:Lcom/android/tools/r8/internal/kC;

.field private f:Lcom/android/tools/r8/ClassFileConsumer;

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/utils/i$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->c:Lcom/android/tools/r8/internal/kC;

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->d:Lcom/android/tools/r8/internal/kC;

    new-instance v0, Lcom/android/tools/r8/internal/kC;

    invoke-direct {v0, v1}, Lcom/android/tools/r8/internal/kC;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->e:Lcom/android/tools/r8/internal/kC;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->f:Lcom/android/tools/r8/ClassFileConsumer;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->g:I

    iput-object p1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->a:Lcom/android/tools/r8/utils/i$a;

    iget-object p1, p1, Lcom/android/tools/r8/utils/i$a;->m:Lcom/android/tools/r8/internal/Ef0;

    iput-object p1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    return-void
.end method

.method private static a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    .locals 11

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 26
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/tools/r8/relocator/f;

    invoke-direct {v2, p2}, Lcom/android/tools/r8/relocator/f;-><init>(Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;)V

    invoke-static {p0, v2}, Lcom/android/tools/r8/internal/tx;->a([Ljava/lang/String;Ljava/util/function/Consumer;)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    .line 27
    :goto_0
    array-length v6, p0

    const-string v7, "."

    if-ge v4, v6, :cond_11

    .line 28
    aget-object v6, p0, v4

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 29
    invoke-static {}, Lcom/android/tools/r8/relocator/RelocatorCommand;->a()Lcom/android/tools/r8/internal/QC;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v8, v4, 0x1

    .line 30
    array-length v9, p0

    if-ge v8, v9, :cond_0

    .line 31
    aget-object v4, p0, v8

    goto :goto_1

    .line 32
    :cond_0
    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    aget-object p0, p0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing parameter for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p2, v0}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_7

    :cond_1
    move v8, v4

    move-object v4, v2

    .line 33
    :goto_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2

    goto/16 :goto_6

    :cond_2
    const/4 v7, -0x1

    .line 34
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v9, "--version"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_2

    :cond_3
    const/4 v7, 0x5

    goto :goto_2

    :sswitch_1
    const-string v9, "--output"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x4

    goto :goto_2

    :sswitch_2
    const-string v9, "--help"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    goto :goto_2

    :cond_5
    const/4 v7, 0x3

    goto :goto_2

    :sswitch_3
    const-string v9, "--thread-count"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_2

    :cond_6
    move v7, v0

    goto :goto_2

    :sswitch_4
    const-string v9, "--map"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_2

    :cond_7
    move v7, v1

    goto :goto_2

    :sswitch_5
    const-string v9, "--input"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_2

    :cond_8
    move v7, v3

    :goto_2
    packed-switch v7, :pswitch_data_0

    .line 35
    new-instance v4, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unknown argument: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_6

    .line 36
    :pswitch_0
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->setPrintVersion(Z)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    goto/16 :goto_6

    .line 37
    :pswitch_1
    sget-boolean v6, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->j:Z

    if-nez v6, :cond_a

    if-eqz v4, :cond_9

    goto :goto_3

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_a
    :goto_3
    if-eqz v5, :cond_b

    .line 38
    new-instance v6, Lcom/android/tools/r8/utils/StringDiagnostic;

    .line 39
    invoke-interface {v5}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot output both to \'"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' and \'"

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    .line 40
    invoke-virtual {p2, v6}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto/16 :goto_6

    .line 41
    :cond_b
    new-array v5, v3, [Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    goto :goto_6

    .line 42
    :pswitch_2
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->setPrintHelp(Z)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    goto :goto_6

    .line 43
    :pswitch_3
    new-instance v7, Lcom/android/tools/r8/relocator/f;

    invoke-direct {v7, p2}, Lcom/android/tools/r8/relocator/f;-><init>(Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;)V

    new-instance v9, Lcom/android/tools/r8/relocator/g;

    invoke-direct {v9, p2}, Lcom/android/tools/r8/relocator/g;-><init>(Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;)V

    .line 44
    invoke-static {v7, v6, v4, p1, v9}, Lcom/android/tools/r8/m;->a(Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Ljava/util/function/Consumer;)V

    goto :goto_6

    .line 45
    :pswitch_4
    sget-boolean v6, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->j:Z

    if-nez v6, :cond_d

    if-eqz v4, :cond_c

    goto :goto_4

    :cond_c
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 46
    :cond_d
    :goto_4
    const-string v6, "->"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_e

    .line 47
    new-instance v6, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "--map "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not on the form from->to"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_6

    .line 48
    :cond_e
    invoke-virtual {v4, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    add-int/2addr v6, v0

    .line 49
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 50
    invoke-static {v7, v4, p2}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->addMapping(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;)V

    goto :goto_6

    .line 51
    :pswitch_5
    sget-boolean v6, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->j:Z

    if-nez v6, :cond_10

    if-eqz v4, :cond_f

    goto :goto_5

    :cond_f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 52
    :cond_10
    :goto_5
    new-array v6, v3, [Ljava/lang/String;

    invoke-static {v4, v6}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->addProgramFile(Ljava/nio/file/Path;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    :goto_6
    add-int/lit8 v4, v8, 0x1

    goto/16 :goto_0

    :cond_11
    :goto_7
    if-nez v5, :cond_12

    .line 53
    new-array p0, v3, [Ljava/lang/String;

    invoke-static {v7, p0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v5

    .line 54
    :cond_12
    invoke-virtual {p2, v5}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->setOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    return-object p2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60c229d6 -> :sswitch_5
        0x2903bbc -> :sswitch_4
        0x3ad2d92c -> :sswitch_3
        0x4f7504e1 -> :sswitch_2
        0x531e66a1 -> :sswitch_1
        0x67918338 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/android/tools/r8/internal/C7;)V
    .locals 10

    .line 9
    iget-boolean v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->i:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ef0;->a()V

    .line 11
    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->f:Lcom/android/tools/r8/ClassFileConsumer;

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    const-string v2, "No output path or consumer has been specified"

    invoke-direct {v1, v2}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/Ef0;->a()V

    .line 14
    new-instance v5, Lcom/android/tools/r8/graph/u1;

    invoke-direct {v5}, Lcom/android/tools/r8/graph/u1;-><init>()V

    .line 15
    new-instance v0, Lcom/android/tools/r8/relocator/RelocatorCommand;

    iget-object v1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->c:Lcom/android/tools/r8/internal/kC;

    .line 16
    invoke-virtual {v1}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->d:Lcom/android/tools/r8/internal/kC;

    .line 18
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->e:Lcom/android/tools/r8/internal/kC;

    .line 20
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/kC;->b()Lcom/android/tools/r8/internal/nC;

    move-result-object v3

    .line 21
    new-instance v4, Lcom/android/tools/r8/internal/hf0;

    invoke-direct {v4, v1, v2, v3}, Lcom/android/tools/r8/internal/hf0;-><init>(Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;Lcom/android/tools/r8/internal/nC;)V

    .line 22
    iget-object v1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->a:Lcom/android/tools/r8/utils/i$a;

    .line 23
    invoke-virtual {v1}, Lcom/android/tools/r8/utils/i$a;->a()Lcom/android/tools/r8/utils/i;

    move-result-object v3

    iget-object v6, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    iget-object v7, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->f:Lcom/android/tools/r8/ClassFileConsumer;

    iget v8, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->g:I

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, v4

    move-object v4, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    invoke-direct/range {v1 .. v8}, Lcom/android/tools/r8/relocator/RelocatorCommand;-><init>(Lcom/android/tools/r8/internal/hf0;Lcom/android/tools/r8/utils/i;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/ClassFileConsumer;ILcom/android/tools/r8/relocator/i;)V

    .line 24
    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return-void

    .line 25
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/tools/r8/relocator/RelocatorCommand;

    iget-boolean v1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->i:Z

    iget-boolean v2, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->h:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/tools/r8/relocator/RelocatorCommand;-><init>(ZZLcom/android/tools/r8/relocator/i;)V

    invoke-virtual {p1, v0}, Lcom/android/tools/r8/internal/C7;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;Lcom/android/tools/r8/internal/C7;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->a(Lcom/android/tools/r8/internal/C7;)V

    return-void
.end method

.method private a(Ljava/nio/file/Path;)V
    .locals 3

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->a:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/utils/i$a;->c(Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/i$a;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/If; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 7
    new-instance v1, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    .line 8
    iget-object p1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v2, v0, v1}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {p1, v2}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .locals 4

    .line 2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/file/Path;

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->a:Lcom/android/tools/r8/utils/i$a;

    invoke-virtual {v1, v0}, Lcom/android/tools/r8/utils/i$a;->c(Ljava/nio/file/Path;)Lcom/android/tools/r8/utils/i$a;
    :try_end_0
    .catch Lcom/android/tools/r8/internal/If; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 4
    new-instance v2, Lcom/android/tools/r8/origin/PathOrigin;

    invoke-direct {v2, v0}, Lcom/android/tools/r8/origin/PathOrigin;-><init>(Ljava/nio/file/Path;)V

    .line 5
    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    new-instance v3, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    invoke-direct {v3, v1, v2}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v0, v3}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addMapping(Ljava/lang/String;Ljava/lang/String;Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;)V
    .locals 2

    const-string v0, ".**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->packageFromString(Ljava/lang/String;)Lcom/android/tools/r8/references/PackageReference;

    move-result-object p0

    invoke-static {p1}, Lcom/android/tools/r8/references/Reference;->packageFromString(Ljava/lang/String;)Lcom/android/tools/r8/references/PackageReference;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->addSubPackageMapping(Lcom/android/tools/r8/references/PackageReference;Lcom/android/tools/r8/references/PackageReference;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    return-void

    :cond_0
    const-string v0, ".*"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->packageFromString(Ljava/lang/String;)Lcom/android/tools/r8/references/PackageReference;

    move-result-object p0

    invoke-static {p1}, Lcom/android/tools/r8/references/Reference;->packageFromString(Ljava/lang/String;)Lcom/android/tools/r8/references/PackageReference;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->addPackageMapping(Lcom/android/tools/r8/references/PackageReference;Lcom/android/tools/r8/references/PackageReference;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/tools/r8/references/Reference;->classFromTypeName(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p0

    invoke-static {p1}, Lcom/android/tools/r8/references/Reference;->classFromTypeName(Ljava/lang/String;)Lcom/android/tools/r8/references/ClassReference;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->addClassMapping(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    return-void
.end method

.method public static synthetic b(Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->a(Ljava/util/Collection;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;Ljava/nio/file/Path;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->a(Ljava/nio/file/Path;)V

    return-void
.end method

.method public static parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/tools/r8/relocator/RelocatorCommand;->builder()Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parse([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    .locals 0

    .line 2
    invoke-static {p2}, Lcom/android/tools/r8/relocator/RelocatorCommand;->builder(Lcom/android/tools/r8/DiagnosticsHandler;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->a([Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addClassMapping(Lcom/android/tools/r8/references/ClassReference;Lcom/android/tools/r8/references/ClassReference;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->d:Lcom/android/tools/r8/internal/kC;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-object p0
.end method

.method public addPackageMapping(Lcom/android/tools/r8/references/PackageReference;Lcom/android/tools/r8/references/PackageReference;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->c:Lcom/android/tools/r8/internal/kC;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-object p0
.end method

.method public addProgramFile(Ljava/nio/file/Path;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    .locals 4

    new-instance v0, Lcom/android/tools/r8/relocator/h;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/relocator/h;-><init>(Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;Ljava/nio/file/Path;)V

    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/If; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/tools/r8/internal/g; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/internal/If;->b:Lcom/android/tools/r8/origin/Origin;

    iget-object p1, p1, Lcom/android/tools/r8/internal/If;->c:Lcom/android/tools/r8/position/Position;

    invoke-direct {v1, v2, v3, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :catch_1
    return-object p0
.end method

.method public addProgramFiles(Ljava/util/Collection;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/nio/file/Path;",
            ">;)",
            "Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/android/tools/r8/relocator/d;

    invoke-direct {v0, p0, p1}, Lcom/android/tools/r8/relocator/d;-><init>(Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;Ljava/util/Collection;)V

    .line 3
    :try_start_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Lcom/android/tools/r8/internal/If; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/tools/r8/internal/g; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception p1

    .line 4
    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    .line 5
    new-instance v1, Lcom/android/tools/r8/utils/StringDiagnostic;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/tools/r8/internal/If;->b:Lcom/android/tools/r8/origin/Origin;

    iget-object p1, p1, Lcom/android/tools/r8/internal/If;->c:Lcom/android/tools/r8/position/Position;

    invoke-direct {v1, v2, v3, p1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/position/Position;)V

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    :catch_1
    return-object p0
.end method

.method public varargs addProgramFiles([Ljava/nio/file/Path;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->addProgramFiles(Ljava/util/Collection;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addSubPackageMapping(Lcom/android/tools/r8/references/PackageReference;Lcom/android/tools/r8/references/PackageReference;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->e:Lcom/android/tools/r8/internal/kC;

    invoke-virtual {v0, p1, p2}, Lcom/android/tools/r8/internal/kC;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/tools/r8/internal/kC;

    return-object p0
.end method

.method public build()Lcom/android/tools/r8/relocator/RelocatorCommand;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/tools/r8/CompilationFailedException;
        }
    .end annotation

    new-instance v0, Lcom/android/tools/r8/internal/C7;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/C7;-><init>()V

    iget-object v1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/relocator/e;

    invoke-direct {v2, p0, v0}, Lcom/android/tools/r8/relocator/e;-><init>(Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;Lcom/android/tools/r8/internal/C7;)V

    invoke-static {v1, v2}, Lcom/android/tools/r8/internal/lv;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/internal/lv$a;)V

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/C7;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/relocator/RelocatorCommand;

    return-object v0
.end method

.method public error(Lcom/android/tools/r8/Diagnostic;)V
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ef0;->error(Lcom/android/tools/r8/Diagnostic;)V

    return-void
.end method

.method public setConsumer(Lcom/android/tools/r8/ClassFileConsumer;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->f:Lcom/android/tools/r8/ClassFileConsumer;

    return-object p0
.end method

.method public setOutputPath(Ljava/nio/file/Path;)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->f:Lcom/android/tools/r8/ClassFileConsumer;

    return-object p0

    :cond_0
    new-instance v0, Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/tools/r8/ClassFileConsumer$ArchiveConsumer;-><init>(Ljava/nio/file/Path;Z)V

    iput-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->f:Lcom/android/tools/r8/ClassFileConsumer;

    return-object p0
.end method

.method public setPrintHelp(Z)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->i:Z

    return-object p0
.end method

.method public setPrintVersion(Z)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->h:Z

    return-object p0
.end method

.method public setThreadCount(I)Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;
    .locals 3

    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->b:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid threadCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    return-object p0

    :cond_0
    iput p1, p0, Lcom/android/tools/r8/relocator/RelocatorCommand$Builder;->g:I

    return-object p0
.end method
