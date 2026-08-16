.class public Lcom/android/tools/r8/internal/EA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic i:Z = true


# instance fields
.field public final a:Lcom/android/tools/r8/graph/u1;

.field public final b:Lcom/android/tools/r8/internal/GA;

.field public final c:Lcom/android/tools/r8/internal/FA;

.field public final d:Lcom/android/tools/r8/internal/Ef0;

.field public final e:Z

.field public final f:I

.field public g:Lcom/android/tools/r8/origin/Origin;

.field public h:Lcom/android/tools/r8/internal/gL;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/tools/r8/graph/u1;Lcom/android/tools/r8/internal/Ef0;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/EA;->a:Lcom/android/tools/r8/graph/u1;

    new-instance v0, Lcom/android/tools/r8/internal/GA;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/GA;-><init>(Lcom/android/tools/r8/graph/u1;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    new-instance v0, Lcom/android/tools/r8/internal/FA;

    invoke-direct {v0, p1}, Lcom/android/tools/r8/internal/FA;-><init>(Lcom/android/tools/r8/graph/u1;)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/EA;->c:Lcom/android/tools/r8/internal/FA;

    iput-object p2, p0, Lcom/android/tools/r8/internal/EA;->d:Lcom/android/tools/r8/internal/Ef0;

    iput p4, p0, Lcom/android/tools/r8/internal/EA;->f:I

    iput-boolean p3, p0, Lcom/android/tools/r8/internal/EA;->e:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/tools/r8/internal/ws0;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Lcom/android/tools/r8/internal/gL;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/DA;
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/android/tools/r8/internal/EA;->d:Lcom/android/tools/r8/internal/Ef0;

    invoke-static {p3, v0, p1}, Lcom/android/tools/r8/internal/wm;->a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/tools/r8/internal/EA;->d:Lcom/android/tools/r8/internal/Ef0;

    const-string v1, "Attempt to parse a non desugared library human specification as a human specification."

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Ljava/lang/String;)V

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/android/tools/r8/internal/EA;->g:Lcom/android/tools/r8/origin/Origin;

    .line 48
    iput-object p3, p0, Lcom/android/tools/r8/internal/EA;->h:Lcom/android/tools/r8/internal/gL;

    .line 49
    invoke-virtual {p0, p4, p2}, Lcom/android/tools/r8/internal/EA;->a(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/SA;

    move-result-object p1

    .line 50
    iget-object p2, p0, Lcom/android/tools/r8/internal/EA;->d:Lcom/android/tools/r8/internal/Ef0;

    iget-object p3, p0, Lcom/android/tools/r8/internal/EA;->g:Lcom/android/tools/r8/origin/Origin;

    invoke-static {p2, p3}, Lcom/android/tools/r8/internal/IA;->a(Lcom/android/tools/r8/internal/Ef0;Lcom/android/tools/r8/origin/Origin;)Lcom/android/tools/r8/internal/IA$a;

    move-result-object p2

    .line 51
    iget-object p3, p0, Lcom/android/tools/r8/internal/EA;->h:Lcom/android/tools/r8/internal/gL;

    const-string p4, "common_flags"

    invoke-virtual {p0, p3, p4}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p3

    .line 52
    iget-object p4, p0, Lcom/android/tools/r8/internal/EA;->h:Lcom/android/tools/r8/internal/gL;

    const-string v0, "library_flags"

    invoke-virtual {p0, p4, v0}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p4

    .line 53
    iget-object v0, p0, Lcom/android/tools/r8/internal/EA;->h:Lcom/android/tools/r8/internal/gL;

    const-string v1, "program_flags"

    invoke-virtual {p0, v0, v1}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v0

    .line 54
    invoke-virtual {p3}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/internal/bL;Lcom/android/tools/r8/internal/IA$a;)V

    .line 55
    iget-boolean p3, p0, Lcom/android/tools/r8/internal/EA;->e:Z

    if-eqz p3, :cond_1

    invoke-virtual {p4}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object p3

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object p3

    .line 56
    :goto_0
    invoke-virtual {p0, p3, p2}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/internal/bL;Lcom/android/tools/r8/internal/IA$a;)V

    .line 57
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/IA$a;->a()Lcom/android/tools/r8/internal/IA;

    move-result-object p2

    .line 58
    new-instance p3, Lcom/android/tools/r8/internal/DA;

    iget-boolean p4, p0, Lcom/android/tools/r8/internal/EA;->e:Z

    invoke-direct {p3, p1, p2, p4}, Lcom/android/tools/r8/internal/DA;-><init>(Lcom/android/tools/r8/internal/SA;Lcom/android/tools/r8/internal/IA;Z)V

    const/4 p1, 0x0

    .line 59
    iput-object p1, p0, Lcom/android/tools/r8/internal/EA;->g:Lcom/android/tools/r8/origin/Origin;

    return-object p3
.end method

.method public a(Lcom/android/tools/r8/v0;)Lcom/android/tools/r8/internal/DA;
    .locals 3

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/tools/r8/internal/EA;->b(Lcom/android/tools/r8/v0;)Ljava/lang/String;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/android/tools/r8/internal/EA;->g:Lcom/android/tools/r8/origin/Origin;

    iget-object v1, p0, Lcom/android/tools/r8/internal/EA;->h:Lcom/android/tools/r8/internal/gL;

    new-instance v2, Lcom/android/tools/r8/internal/bD0;

    invoke-direct {v2}, Lcom/android/tools/r8/internal/bD0;-><init>()V

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/origin/Origin;Ljava/lang/String;Lcom/android/tools/r8/internal/gL;Ljava/util/function/Consumer;)Lcom/android/tools/r8/internal/DA;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/tools/r8/internal/SA;
    .locals 7

    .line 2
    new-instance v0, Lcom/android/tools/r8/internal/RA;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/RA;-><init>()V

    .line 3
    iput-object p2, v0, Lcom/android/tools/r8/internal/RA;->d:Ljava/lang/String;

    .line 4
    iget-object p2, p0, Lcom/android/tools/r8/internal/EA;->h:Lcom/android/tools/r8/internal/gL;

    const-string v1, "configuration_format_version"

    invoke-virtual {p0, p2, v1}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p2

    .line 5
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result p2

    const/16 v1, 0x65

    if-eq p2, v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/tools/r8/internal/EA;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v2, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Human desugared library specification format version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mismatches the parser expected version (101). This is allowed and should happen only while extending the specifications."

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/android/tools/r8/internal/EA;->g:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v2, p2, v3}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    invoke-virtual {v1, v2}, Lcom/android/tools/r8/internal/Ef0;->warning(Lcom/android/tools/r8/Diagnostic;)V

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/android/tools/r8/internal/EA;->h:Lcom/android/tools/r8/internal/gL;

    const-string v1, "identifier"

    invoke-virtual {p0, p2, v1}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object p2

    .line 8
    iput-object p2, v0, Lcom/android/tools/r8/internal/RA;->c:Ljava/lang/String;

    .line 9
    iget-object p2, p0, Lcom/android/tools/r8/internal/EA;->h:Lcom/android/tools/r8/internal/gL;

    .line 10
    const-string v1, "synthesized_library_classes_package_prefix"

    invoke-virtual {p0, p2, v1}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object p2

    const/16 v1, 0x2e

    const/16 v2, 0x2f

    .line 11
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/RA;->b:Ljava/lang/String;

    .line 12
    iget-object p2, p0, Lcom/android/tools/r8/internal/EA;->h:Lcom/android/tools/r8/internal/gL;

    .line 13
    const-string v1, "required_compilation_api_level"

    invoke-virtual {p0, p2, v1}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result p2

    .line 14
    invoke-static {p2}, Lcom/android/tools/r8/internal/C2;->a(I)Lcom/android/tools/r8/internal/C2;

    move-result-object p2

    .line 15
    iput-object p2, v0, Lcom/android/tools/r8/internal/RA;->a:Lcom/android/tools/r8/internal/C2;

    .line 16
    iget-object p2, p0, Lcom/android/tools/r8/internal/EA;->h:Lcom/android/tools/r8/internal/gL;

    .line 17
    iget-object p2, p2, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 18
    const-string v1, "shrinker_config"

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 19
    iget-object p2, p0, Lcom/android/tools/r8/internal/EA;->h:Lcom/android/tools/r8/internal/gL;

    .line 20
    iget-object p2, p2, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 21
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/dL;

    .line 22
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object p2

    .line 23
    new-instance v1, Ljava/util/ArrayList;

    .line 24
    iget-object v2, p2, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 25
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    iget-object p2, p2, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 27
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/dL;

    .line 28
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_1
    iput-object v1, v0, Lcom/android/tools/r8/internal/RA;->f:Ljava/util/AbstractCollection;

    .line 30
    :cond_2
    iget-object p2, p0, Lcom/android/tools/r8/internal/EA;->h:Lcom/android/tools/r8/internal/gL;

    .line 31
    iget-object p2, p2, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 32
    const-string v1, "support_all_callbacks_from_library"

    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 33
    iget-object p2, p0, Lcom/android/tools/r8/internal/EA;->h:Lcom/android/tools/r8/internal/gL;

    .line 34
    iget-object p2, p2, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 35
    invoke-virtual {p2, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/dL;

    .line 36
    invoke-virtual {p2}, Lcom/android/tools/r8/internal/dL;->a()Z

    move-result p2

    .line 37
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, v0, Lcom/android/tools/r8/internal/RA;->e:Ljava/lang/Boolean;

    .line 38
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 39
    sget-boolean p1, Lcom/android/tools/r8/internal/RA;->g:Z

    if-nez p1, :cond_5

    iget-object p2, v0, Lcom/android/tools/r8/internal/RA;->b:Ljava/lang/String;

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_5
    :goto_1
    if-nez p1, :cond_7

    .line 40
    iget-object p1, v0, Lcom/android/tools/r8/internal/RA;->e:Ljava/lang/Boolean;

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 41
    :cond_7
    :goto_2
    new-instance p1, Lcom/android/tools/r8/internal/SA;

    iget-object v1, v0, Lcom/android/tools/r8/internal/RA;->a:Lcom/android/tools/r8/internal/C2;

    iget-object v2, v0, Lcom/android/tools/r8/internal/RA;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/tools/r8/internal/RA;->c:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/tools/r8/internal/RA;->d:Ljava/lang/String;

    iget-object p2, v0, Lcom/android/tools/r8/internal/RA;->e:Ljava/lang/Boolean;

    .line 42
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    iget-object v6, v0, Lcom/android/tools/r8/internal/RA;->f:Ljava/util/AbstractCollection;

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/tools/r8/internal/SA;-><init>(Lcom/android/tools/r8/internal/C2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;)V

    return-object p1
.end method

.method public final a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;
    .locals 3

    .line 60
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 61
    invoke-virtual {v0, p2}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object p1, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {p1, p2}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dL;

    return-object p1

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/android/tools/r8/internal/EA;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v0, Lcom/android/tools/r8/utils/StringDiagnostic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid desugared library configuration. Expected required key \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/tools/r8/internal/EA;->g:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v0, p2, v1}, Lcom/android/tools/r8/utils/StringDiagnostic;-><init>(Ljava/lang/String;Lcom/android/tools/r8/origin/Origin;)V

    const/4 p2, 0x0

    .line 64
    invoke-virtual {p1, p2, v0}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    .line 65
    iget-object p1, p1, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method

.method public final a(Lcom/android/tools/r8/internal/bL;Lcom/android/tools/r8/internal/IA$a;)V
    .locals 6

    .line 66
    iget-object p1, p1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-ge v1, v0, :cond_2

    .line 68
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lcom/android/tools/r8/internal/dL;

    .line 69
    invoke-virtual {v2}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v2

    .line 70
    const-string v3, "api_level_below_or_equal"

    invoke-virtual {p0, v2, v3}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result v3

    .line 71
    iget v4, p0, Lcom/android/tools/r8/internal/EA;->f:I

    if-gt v4, v3, :cond_0

    .line 72
    iget-object v3, v2, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v4, "api_level_greater_or_equal"

    invoke-virtual {v3, v4}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 73
    iget v3, p0, Lcom/android/tools/r8/internal/EA;->f:I

    .line 74
    iget-object v5, v2, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/tools/r8/internal/dL;

    .line 75
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 76
    invoke-virtual {p0, v2, p2}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/IA$a;)V

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0, v2, p2}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/IA$a;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final a(Lcom/android/tools/r8/internal/gL;Lcom/android/tools/r8/internal/IA$a;)V
    .locals 13

    .line 78
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    .line 79
    const-string v1, "rewrite_prefix"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 81
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 82
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 83
    check-cast v0, Lcom/android/tools/r8/internal/AS;

    .line 84
    iget-object v0, v0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 85
    iget-object v1, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v1, v1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 86
    iget v2, v0, Lcom/android/tools/r8/internal/FS;->f:I

    .line 87
    :goto_0
    iget-object v3, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v1, v3, :cond_2

    if-eq v1, v3, :cond_1

    .line 88
    iget v3, v0, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v3, v2, :cond_0

    .line 89
    iget-object v3, v1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 90
    iget-object v4, v1, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 91
    check-cast v4, Ljava/lang/String;

    .line 92
    iget-object v1, v1, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 93
    check-cast v1, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v4, v1}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/android/tools/r8/internal/IA$a;

    move-object v1, v3

    goto :goto_0

    .line 94
    :cond_0
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 95
    :cond_1
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 96
    :cond_2
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "maintain_prefix"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 98
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v0

    .line 99
    iget-object v0, v0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    .line 100
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/dL;

    .line 101
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/tools/r8/internal/IA$a;->b(Ljava/lang/String;)Lcom/android/tools/r8/internal/IA$a;

    goto :goto_1

    .line 102
    :cond_3
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "dont_rewrite_prefix"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 103
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 104
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v0

    .line 105
    iget-object v0, v0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_4

    .line 106
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/dL;

    .line 107
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    .line 108
    iget-object v5, p2, Lcom/android/tools/r8/internal/IA$a;->d:Ljava/util/HashSet;

    .line 109
    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 110
    :cond_4
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "never_outline_api"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 111
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 112
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v0

    .line 113
    iget-object v0, v0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_3
    if-ge v3, v1, :cond_5

    .line 114
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/dL;

    .line 115
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    .line 116
    iget-object v5, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 117
    iget-object v4, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 118
    iget-object v5, p2, Lcom/android/tools/r8/internal/IA$a;->s:Ljava/util/Set;

    .line 119
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 120
    :cond_5
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "api_generic_types_conversion"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 121
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 122
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 123
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 124
    check-cast v0, Lcom/android/tools/r8/internal/AS;

    .line 125
    iget-object v0, v0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 126
    iget-object v1, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v1, v1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 127
    iget v3, v0, Lcom/android/tools/r8/internal/FS;->f:I

    .line 128
    :goto_4
    iget-object v4, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v1, v4, :cond_9

    if-eq v1, v4, :cond_8

    .line 129
    iget v4, v0, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v4, v3, :cond_7

    .line 130
    iget-object v4, v1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 131
    iget-object v5, v1, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 132
    check-cast v5, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v5

    move v6, v2

    .line 133
    :goto_5
    iget-object v7, v5, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_6

    .line 134
    iget-object v7, v1, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 135
    check-cast v7, Ljava/lang/String;

    .line 136
    iget-object v8, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 137
    iget-object v7, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 138
    iget-object v8, v5, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/tools/r8/internal/dL;

    .line 139
    invoke-virtual {v8}, Lcom/android/tools/r8/internal/dL;->b()I

    move-result v8

    add-int/lit8 v9, v6, 0x1

    .line 140
    iget-object v10, v5, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/tools/r8/internal/dL;

    .line 141
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v9

    .line 142
    iget-object v10, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v10, v9}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 143
    iget-object v9, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    .line 144
    invoke-virtual {p2, v7, v8, v9}, Lcom/android/tools/r8/internal/IA$a;->a(Lcom/android/tools/r8/graph/A2;ILcom/android/tools/r8/graph/A2;)V

    add-int/lit8 v6, v6, 0x2

    goto :goto_5

    :cond_6
    move-object v1, v4

    goto :goto_4

    .line 145
    :cond_7
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 146
    :cond_8
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 147
    :cond_9
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "rewrite_derived_prefix"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 148
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 149
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 150
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 151
    check-cast v0, Lcom/android/tools/r8/internal/AS;

    .line 152
    iget-object v0, v0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 153
    iget-object v1, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v1, v1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 154
    iget v3, v0, Lcom/android/tools/r8/internal/FS;->f:I

    .line 155
    :goto_6
    iget-object v4, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v1, v4, :cond_f

    if-eq v1, v4, :cond_e

    .line 156
    iget v4, v0, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v4, v3, :cond_d

    .line 157
    iget-object v4, v1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 158
    iget-object v5, v1, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 159
    check-cast v5, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v5

    .line 160
    iget-object v5, v5, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 161
    check-cast v5, Lcom/android/tools/r8/internal/AS;

    .line 162
    iget-object v5, v5, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 163
    iget-object v6, v5, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v6, v6, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 164
    iget v7, v5, Lcom/android/tools/r8/internal/FS;->f:I

    .line 165
    :goto_7
    iget-object v8, v5, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v6, v8, :cond_c

    if-eq v6, v8, :cond_b

    .line 166
    iget v8, v5, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v8, v7, :cond_a

    .line 167
    iget-object v8, v6, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 168
    iget-object v9, v1, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 169
    check-cast v9, Ljava/lang/String;

    .line 170
    iget-object v10, v6, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 171
    check-cast v10, Ljava/lang/String;

    .line 172
    iget-object v6, v6, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 173
    check-cast v6, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v6

    .line 174
    invoke-virtual {p2, v9, v10, v6}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    goto :goto_7

    .line 175
    :cond_a
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 176
    :cond_b
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    :cond_c
    move-object v1, v4

    goto :goto_6

    .line 177
    :cond_d
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 178
    :cond_e
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 179
    :cond_f
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "retarget_static_field"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 180
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 181
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 182
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 183
    check-cast v0, Lcom/android/tools/r8/internal/AS;

    .line 184
    iget-object v0, v0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 185
    iget-object v1, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v1, v1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 186
    iget v3, v0, Lcom/android/tools/r8/internal/FS;->f:I

    .line 187
    :goto_8
    iget-object v4, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v1, v4, :cond_12

    if-eq v1, v4, :cond_11

    .line 188
    iget v4, v0, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v4, v3, :cond_10

    .line 189
    iget-object v4, v1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 190
    iget-object v5, v1, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 191
    check-cast v5, Ljava/lang/String;

    .line 192
    iget-object v6, p0, Lcom/android/tools/r8/internal/EA;->c:Lcom/android/tools/r8/internal/FA;

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/internal/o;->b(Ljava/lang/String;)V

    .line 193
    iget-object v5, p0, Lcom/android/tools/r8/internal/EA;->c:Lcom/android/tools/r8/internal/FA;

    invoke-virtual {v5}, Lcom/android/tools/r8/internal/FA;->a()Lcom/android/tools/r8/graph/l1;

    move-result-object v5

    .line 194
    iget-object v1, v1, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 195
    check-cast v1, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v1

    .line 196
    iget-object v6, p0, Lcom/android/tools/r8/internal/EA;->c:Lcom/android/tools/r8/internal/FA;

    invoke-virtual {v6, v1}, Lcom/android/tools/r8/internal/o;->b(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/android/tools/r8/internal/EA;->c:Lcom/android/tools/r8/internal/FA;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/FA;->a()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    .line 198
    invoke-virtual {p2, v5, v1}, Lcom/android/tools/r8/internal/IA$a;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/l1;)Lcom/android/tools/r8/internal/IA$a;

    move-object v1, v4

    goto :goto_8

    .line 199
    :cond_10
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 200
    :cond_11
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 201
    :cond_12
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "retarget_method"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "#"

    if-eqz v0, :cond_16

    .line 202
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 203
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 204
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 205
    check-cast v0, Lcom/android/tools/r8/internal/AS;

    .line 206
    iget-object v0, v0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 207
    iget-object v4, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 208
    iget v5, v0, Lcom/android/tools/r8/internal/FS;->f:I

    .line 209
    :goto_9
    iget-object v6, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v4, v6, :cond_16

    if-eq v4, v6, :cond_15

    .line 210
    iget v6, v0, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v6, v5, :cond_14

    .line 211
    iget-object v6, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 212
    iget-object v7, v4, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 213
    check-cast v7, Ljava/lang/String;

    .line 214
    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 215
    check-cast v4, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    .line 216
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13

    .line 217
    iget-object v8, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 218
    iget-object v7, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 219
    iget-object v8, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v8, v4}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 220
    iget-object v4, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 221
    iget-object v8, p2, Lcom/android/tools/r8/internal/IA$a;->l:Ljava/util/IdentityHashMap;

    .line 222
    invoke-virtual {p2, v8, v7, v4, v1}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    .line 223
    :cond_13
    iget-object v8, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 224
    iget-object v7, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 225
    iget-object v8, p0, Lcom/android/tools/r8/internal/EA;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v4}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 226
    iget-object v8, p2, Lcom/android/tools/r8/internal/IA$a;->j:Ljava/util/IdentityHashMap;

    .line 227
    invoke-virtual {p2, v8, v7, v4, v1}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_a
    move-object v4, v6

    goto :goto_9

    .line 228
    :cond_14
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 229
    :cond_15
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 230
    :cond_16
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "retarget_method_with_emulated_dispatch"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 231
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 232
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 233
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 234
    check-cast v0, Lcom/android/tools/r8/internal/AS;

    .line 235
    iget-object v0, v0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 236
    iget-object v4, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 237
    iget v5, v0, Lcom/android/tools/r8/internal/FS;->f:I

    .line 238
    :goto_b
    iget-object v6, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v4, v6, :cond_1a

    if-eq v4, v6, :cond_19

    .line 239
    iget v6, v0, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v6, v5, :cond_18

    .line 240
    iget-object v6, v4, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 241
    iget-object v7, v4, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 242
    check-cast v7, Ljava/lang/String;

    .line 243
    iget-object v4, v4, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 244
    check-cast v4, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    .line 245
    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_17

    .line 246
    iget-object v8, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 247
    iget-object v7, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 248
    iget-object v8, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v8, v4}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 249
    iget-object v4, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    .line 250
    iget-object v8, p2, Lcom/android/tools/r8/internal/IA$a;->m:Ljava/util/IdentityHashMap;

    .line 251
    invoke-virtual {p2, v8, v7, v4, v1}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_c

    .line 252
    :cond_17
    iget-object v8, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 253
    iget-object v7, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v7

    .line 254
    iget-object v8, p0, Lcom/android/tools/r8/internal/EA;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v4}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 255
    iget-object v8, p2, Lcom/android/tools/r8/internal/IA$a;->k:Ljava/util/IdentityHashMap;

    .line 256
    invoke-virtual {p2, v8, v7, v4, v1}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    :goto_c
    move-object v4, v6

    goto :goto_b

    .line 257
    :cond_18
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 258
    :cond_19
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 259
    :cond_1a
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "covariant_retarget_method"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 260
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 261
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 262
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 263
    check-cast v0, Lcom/android/tools/r8/internal/AS;

    .line 264
    iget-object v0, v0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 265
    iget-object v3, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v3, v3, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 266
    iget v4, v0, Lcom/android/tools/r8/internal/FS;->f:I

    .line 267
    :goto_d
    iget-object v5, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v3, v5, :cond_1d

    if-eq v3, v5, :cond_1c

    .line 268
    iget v5, v0, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v5, v4, :cond_1b

    .line 269
    iget-object v5, v3, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 270
    iget-object v6, v3, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 271
    check-cast v6, Ljava/lang/String;

    .line 272
    iget-object v7, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 273
    iget-object v6, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v6}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v6

    .line 274
    iget-object v3, v3, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 275
    check-cast v3, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v3

    .line 276
    iget-object v7, p0, Lcom/android/tools/r8/internal/EA;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v3}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 277
    iget-object v7, p2, Lcom/android/tools/r8/internal/IA$a;->i:Ljava/util/IdentityHashMap;

    .line 278
    invoke-virtual {p2, v7, v6, v3, v1}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_d

    .line 279
    :cond_1b
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 280
    :cond_1c
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 281
    :cond_1d
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "backport"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 282
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 283
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 284
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 285
    check-cast v0, Lcom/android/tools/r8/internal/AS;

    .line 286
    iget-object v0, v0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 287
    iget-object v3, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v3, v3, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 288
    iget v4, v0, Lcom/android/tools/r8/internal/FS;->f:I

    .line 289
    :goto_e
    iget-object v5, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v3, v5, :cond_20

    if-eq v3, v5, :cond_1f

    .line 290
    iget v5, v0, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v5, v4, :cond_1e

    .line 291
    iget-object v5, v3, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 292
    iget-object v6, v3, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 293
    check-cast v6, Ljava/lang/String;

    .line 294
    iget-object v7, p0, Lcom/android/tools/r8/internal/EA;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v6}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 295
    iget-object v3, v3, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 296
    check-cast v3, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v3

    .line 297
    iget-object v7, p0, Lcom/android/tools/r8/internal/EA;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v3}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 298
    iget-object v7, p2, Lcom/android/tools/r8/internal/IA$a;->o:Ljava/util/IdentityHashMap;

    .line 299
    invoke-virtual {p2, v7, v6, v3, v1}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_e

    .line 300
    :cond_1e
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 301
    :cond_1f
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 302
    :cond_20
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "emulate_interface"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 303
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 304
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 305
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 306
    check-cast v0, Lcom/android/tools/r8/internal/AS;

    .line 307
    iget-object v0, v0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 308
    iget-object v3, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v3, v3, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 309
    iget v4, v0, Lcom/android/tools/r8/internal/FS;->f:I

    .line 310
    :goto_f
    iget-object v5, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v3, v5, :cond_25

    if-eq v3, v5, :cond_24

    .line 311
    iget v5, v0, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v5, v4, :cond_23

    .line 312
    iget-object v5, v3, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 313
    iget-object v6, v3, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 314
    check-cast v6, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 315
    instance-of v6, v6, Lcom/android/tools/r8/internal/jL;

    if-eqz v6, :cond_21

    .line 316
    iget-object v6, v3, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 317
    check-cast v6, Ljava/lang/String;

    .line 318
    iget-object v7, p0, Lcom/android/tools/r8/internal/EA;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v6}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 319
    iget-object v3, v3, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 320
    check-cast v3, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v3

    .line 321
    iget-object v7, p0, Lcom/android/tools/r8/internal/EA;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v3}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 322
    iget-object v7, p2, Lcom/android/tools/r8/internal/IA$a;->g:Ljava/util/IdentityHashMap;

    .line 323
    new-instance v8, Lcom/android/tools/r8/internal/KA;

    invoke-direct {v8, v3}, Lcom/android/tools/r8/internal/KA;-><init>(Lcom/android/tools/r8/graph/M2;)V

    invoke-virtual {p2, v7, v6, v8, v1}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_11

    .line 324
    :cond_21
    iget-object v6, v3, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 325
    check-cast v6, Ljava/lang/String;

    .line 326
    iget-object v7, p0, Lcom/android/tools/r8/internal/EA;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v6}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 327
    iget-object v3, v3, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 328
    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 329
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v3

    .line 330
    const-string v7, "rewrittenType"

    invoke-virtual {p0, v3, v7}, Lcom/android/tools/r8/internal/EA;->a(Lcom/android/tools/r8/internal/gL;Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v7

    .line 331
    iget-object v8, p0, Lcom/android/tools/r8/internal/EA;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v7}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v7

    .line 332
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v8

    .line 333
    iget-object v9, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v10, "emulatedMethods"

    invoke-virtual {v9, v10}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    .line 334
    iget-object v3, v3, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v3, v10}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/tools/r8/internal/dL;

    .line 335
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v3

    .line 336
    iget-object v3, v3, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    move v10, v2

    :goto_10
    if-ge v10, v9, :cond_22

    .line 337
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v10, v10, 0x1

    check-cast v11, Lcom/android/tools/r8/internal/dL;

    .line 338
    iget-object v12, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 339
    iget-object v11, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v11}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_10

    .line 340
    :cond_22
    new-instance v3, Lcom/android/tools/r8/internal/JA;

    invoke-direct {v3, v7, v8}, Lcom/android/tools/r8/internal/JA;-><init>(Lcom/android/tools/r8/graph/M2;Ljava/util/Set;)V

    .line 341
    invoke-virtual {p2, v6, v3}, Lcom/android/tools/r8/internal/IA$a;->a(Lcom/android/tools/r8/graph/M2;Lcom/android/tools/r8/internal/JA;)Lcom/android/tools/r8/internal/IA$a;

    :goto_11
    move-object v3, v5

    goto/16 :goto_f

    .line 342
    :cond_23
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 343
    :cond_24
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 344
    :cond_25
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "custom_conversion"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 345
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 346
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 347
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 348
    check-cast v0, Lcom/android/tools/r8/internal/AS;

    .line 349
    iget-object v0, v0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 350
    iget-object v3, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v3, v3, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 351
    iget v4, v0, Lcom/android/tools/r8/internal/FS;->f:I

    .line 352
    :goto_12
    iget-object v5, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v3, v5, :cond_28

    if-eq v3, v5, :cond_27

    .line 353
    iget v5, v0, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v5, v4, :cond_26

    .line 354
    iget-object v5, v3, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 355
    iget-object v6, v3, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 356
    check-cast v6, Ljava/lang/String;

    .line 357
    iget-object v7, p0, Lcom/android/tools/r8/internal/EA;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v6}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v6

    .line 358
    iget-object v3, v3, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 359
    check-cast v3, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v3}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v3

    .line 360
    iget-object v7, p0, Lcom/android/tools/r8/internal/EA;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v3}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v3

    .line 361
    iget-object v7, p2, Lcom/android/tools/r8/internal/IA$a;->p:Ljava/util/IdentityHashMap;

    .line 362
    invoke-virtual {p2, v7, v6, v3, v1}, Lcom/android/tools/r8/internal/IA$a;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v5

    goto :goto_12

    .line 363
    :cond_26
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 364
    :cond_27
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 365
    :cond_28
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "wrapper_conversion"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 366
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 367
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v0

    .line 368
    iget-object v0, v0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_13
    if-ge v3, v1, :cond_29

    .line 369
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/dL;

    .line 370
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    .line 371
    iget-object v5, p0, Lcom/android/tools/r8/internal/EA;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v4}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 372
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    sget-object v5, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    .line 374
    iget-object v6, p2, Lcom/android/tools/r8/internal/IA$a;->r:Ljava/util/IdentityHashMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_13

    .line 375
    :cond_29
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "wrapper_conversion_excluding"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 376
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 377
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    .line 378
    iget-object v0, v0, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/FS;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 379
    check-cast v0, Lcom/android/tools/r8/internal/AS;

    .line 380
    iget-object v0, v0, Lcom/android/tools/r8/internal/AS;->b:Lcom/android/tools/r8/internal/FS;

    .line 381
    iget-object v1, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    iget-object v1, v1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 382
    iget v3, v0, Lcom/android/tools/r8/internal/FS;->f:I

    .line 383
    :goto_14
    iget-object v4, v0, Lcom/android/tools/r8/internal/FS;->g:Lcom/android/tools/r8/internal/ES;

    if-eq v1, v4, :cond_2d

    if-eq v1, v4, :cond_2c

    .line 384
    iget v4, v0, Lcom/android/tools/r8/internal/FS;->f:I

    if-ne v4, v3, :cond_2b

    .line 385
    iget-object v4, v1, Lcom/android/tools/r8/internal/ES;->e:Lcom/android/tools/r8/internal/ES;

    .line 386
    iget-object v5, v1, Lcom/android/tools/r8/internal/ES;->g:Ljava/lang/Object;

    .line 387
    check-cast v5, Ljava/lang/String;

    .line 388
    iget-object v6, p0, Lcom/android/tools/r8/internal/EA;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v5}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v5

    .line 389
    iget-object v1, v1, Lcom/android/tools/r8/internal/ES;->i:Ljava/lang/Object;

    .line 390
    check-cast v1, Lcom/android/tools/r8/internal/dL;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v1

    .line 391
    invoke-static {}, Lcom/android/tools/r8/internal/Ll0;->c()Ljava/util/Set;

    move-result-object v6

    .line 392
    iget-object v1, v1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    .line 393
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v8, v2

    :goto_15
    if-ge v8, v7, :cond_2a

    .line 394
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lcom/android/tools/r8/internal/dL;

    .line 395
    invoke-virtual {v9}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v9

    .line 396
    iget-object v10, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v10, v9}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 397
    iget-object v9, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v9}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v9

    .line 398
    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 399
    :cond_2a
    iget-object v1, p2, Lcom/android/tools/r8/internal/IA$a;->r:Ljava/util/IdentityHashMap;

    .line 400
    invoke-virtual {v1, v5, v6}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v4

    goto :goto_14

    .line 401
    :cond_2b
    new-instance p1, Ljava/util/ConcurrentModificationException;

    invoke-direct {p1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p1

    .line 402
    :cond_2c
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 403
    :cond_2d
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "dont_retarget"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 404
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 405
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v0

    .line 406
    iget-object v0, v0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_2e

    .line 407
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/dL;

    .line 408
    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    .line 409
    iget-object v5, p0, Lcom/android/tools/r8/internal/EA;->a:Lcom/android/tools/r8/graph/u1;

    invoke-static {v4}, Lcom/android/tools/r8/internal/Bl;->H(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/graph/u1;->d(Ljava/lang/String;)Lcom/android/tools/r8/graph/M2;

    move-result-object v4

    .line 410
    iget-object v5, p2, Lcom/android/tools/r8/internal/IA$a;->q:Ljava/util/Set;

    .line 411
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 412
    :cond_2e
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "amend_library_method"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 413
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/tools/r8/internal/dL;

    .line 414
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object v0

    .line 415
    iget-object v0, v0, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_31

    .line 416
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/tools/r8/internal/dL;

    .line 417
    iget-object v5, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/android/tools/r8/internal/Q0;->b(Ljava/lang/String;)V

    .line 418
    iget-object v4, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    invoke-virtual {v4}, Lcom/android/tools/r8/internal/GA;->a()Lcom/android/tools/r8/graph/A2;

    move-result-object v4

    iget-object v5, p0, Lcom/android/tools/r8/internal/EA;->b:Lcom/android/tools/r8/internal/GA;

    .line 419
    sget-boolean v6, Lcom/android/tools/r8/internal/GA;->j:Z

    if-nez v6, :cond_30

    .line 420
    invoke-virtual {v5}, Lcom/android/tools/r8/internal/GA;->b()Z

    move-result v6

    if-eqz v6, :cond_2f

    goto :goto_18

    .line 421
    :cond_2f
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 422
    :cond_30
    :goto_18
    iget-object v5, v5, Lcom/android/tools/r8/internal/GA;->i:Lcom/android/tools/r8/graph/L4;

    .line 423
    iget-object v6, p2, Lcom/android/tools/r8/internal/IA$a;->t:Ljava/util/IdentityHashMap;

    .line 424
    invoke-virtual {v6, v4, v5}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    .line 425
    :cond_31
    iget-object v0, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    const-string v1, "amend_library_field"

    invoke-virtual {v0, v1}, Lcom/android/tools/r8/internal/FS;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 426
    iget-object p1, p1, Lcom/android/tools/r8/internal/gL;->b:Lcom/android/tools/r8/internal/FS;

    invoke-virtual {p1, v1}, Lcom/android/tools/r8/internal/FS;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/tools/r8/internal/dL;

    .line 427
    invoke-virtual {p1}, Lcom/android/tools/r8/internal/dL;->c()Lcom/android/tools/r8/internal/bL;

    move-result-object p1

    .line 428
    iget-object p1, p1, Lcom/android/tools/r8/internal/bL;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_19
    if-ge v2, v0, :cond_34

    .line 429
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    check-cast v1, Lcom/android/tools/r8/internal/dL;

    .line 430
    iget-object v3, p0, Lcom/android/tools/r8/internal/EA;->c:Lcom/android/tools/r8/internal/FA;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/dL;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/tools/r8/internal/o;->b(Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/android/tools/r8/internal/EA;->c:Lcom/android/tools/r8/internal/FA;

    invoke-virtual {v1}, Lcom/android/tools/r8/internal/FA;->a()Lcom/android/tools/r8/graph/l1;

    move-result-object v1

    iget-object v3, p0, Lcom/android/tools/r8/internal/EA;->c:Lcom/android/tools/r8/internal/FA;

    .line 432
    sget-boolean v4, Lcom/android/tools/r8/internal/FA;->h:Z

    if-nez v4, :cond_33

    .line 433
    invoke-virtual {v3}, Lcom/android/tools/r8/internal/FA;->b()Z

    move-result v4

    if-eqz v4, :cond_32

    goto :goto_1a

    .line 434
    :cond_32
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 435
    :cond_33
    :goto_1a
    iget-object v3, v3, Lcom/android/tools/r8/internal/FA;->g:Lcom/android/tools/r8/graph/k3;

    .line 436
    invoke-virtual {p2, v1, v3}, Lcom/android/tools/r8/internal/IA$a;->a(Lcom/android/tools/r8/graph/l1;Lcom/android/tools/r8/graph/k3;)Lcom/android/tools/r8/internal/IA$a;

    goto :goto_19

    :cond_34
    return-void
.end method

.method public final b(Lcom/android/tools/r8/v0;)Ljava/lang/String;
    .locals 3

    invoke-interface {p1}, Lcom/android/tools/r8/Resource;->getOrigin()Lcom/android/tools/r8/origin/Origin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/EA;->g:Lcom/android/tools/r8/origin/Origin;

    sget-boolean v1, Lcom/android/tools/r8/internal/EA;->i:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/android/tools/r8/v0;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/tools/r8/internal/iL;->a(Ljava/lang/String;)Lcom/android/tools/r8/internal/dL;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/tools/r8/internal/dL;->d()Lcom/android/tools/r8/internal/gL;

    move-result-object v0

    iput-object v0, p0, Lcom/android/tools/r8/internal/EA;->h:Lcom/android/tools/r8/internal/gL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/android/tools/r8/internal/EA;->d:Lcom/android/tools/r8/internal/Ef0;

    new-instance v1, Lcom/android/tools/r8/utils/ExceptionDiagnostic;

    iget-object v2, p0, Lcom/android/tools/r8/internal/EA;->g:Lcom/android/tools/r8/origin/Origin;

    invoke-direct {v1, p1, v2}, Lcom/android/tools/r8/utils/ExceptionDiagnostic;-><init>(Ljava/lang/Throwable;Lcom/android/tools/r8/origin/Origin;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/tools/r8/internal/Ef0;->a(Lcom/android/tools/r8/DiagnosticsLevel;Lcom/android/tools/r8/Diagnostic;)V

    iget-object p1, v0, Lcom/android/tools/r8/internal/Ef0;->c:Lcom/android/tools/r8/internal/g;

    throw p1
.end method
