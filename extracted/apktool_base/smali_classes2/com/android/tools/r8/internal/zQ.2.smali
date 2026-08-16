.class public final Lcom/android/tools/r8/internal/zQ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/android/tools/r8/internal/tW;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0008\u0000\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u0011\u0008\u0016\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0006\u0010\u0008R\u001a\u0010\u0002\u001a\u00020\u0003X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0008R\u0017\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00120\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u0016X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u0018\"\u0004\u0008\u001d\u0010\u001aR\u0017\u0010\u001e\u001a\u0008\u0012\u0004\u0012\u00020\u001f0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0014R\u0017\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\"0\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010\u0014R\u001a\u0010$\u001a\u0008\u0012\u0004\u0012\u00020&0%X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u0014\u00a8\u0006("
    }
    d2 = {
        "Lkotlin/metadata/KmTypeAlias;",
        "",
        "flags",
        "",
        "name",
        "",
        "<init>",
        "(ILjava/lang/String;)V",
        "(Ljava/lang/String;)V",
        "getFlags$kotlin_metadata",
        "()I",
        "setFlags$kotlin_metadata",
        "(I)V",
        "getName",
        "()Ljava/lang/String;",
        "setName",
        "typeParameters",
        "",
        "Lkotlin/metadata/KmTypeParameter;",
        "getTypeParameters",
        "()Ljava/util/List;",
        "underlyingType",
        "Lkotlin/metadata/KmType;",
        "getUnderlyingType",
        "()Lkotlin/metadata/KmType;",
        "setUnderlyingType",
        "(Lkotlin/metadata/KmType;)V",
        "expandedType",
        "getExpandedType",
        "setExpandedType",
        "annotations",
        "Lkotlin/metadata/KmAnnotation;",
        "getAnnotations",
        "versionRequirements",
        "Lkotlin/metadata/KmVersionRequirement;",
        "getVersionRequirements",
        "extensions",
        "",
        "Lkotlin/metadata/internal/extensions/KmTypeAliasExtension;",
        "getExtensions$kotlin_metadata",
        "kotlin-metadata"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/ArrayList;

.field public d:Lcom/android/tools/r8/internal/yQ;

.field public e:Lcom/android/tools/r8/internal/yQ;

.field public final f:Ljava/util/ArrayList;

.field public final g:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/zQ;->a:I

    iput-object p2, p0, Lcom/android/tools/r8/internal/zQ;->b:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/zQ;->c:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/zQ;->f:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/zQ;->g:Ljava/util/ArrayList;

    sget-object p1, Lcom/android/tools/r8/internal/yW;->a:Lcom/android/tools/r8/internal/xW;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/android/tools/r8/internal/xW;->b:Lcom/android/tools/r8/internal/kr0;

    invoke-virtual {p1}, Lcom/android/tools/r8/internal/kr0;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/tools/r8/internal/yW;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/GP;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/android/tools/r8/internal/zQ;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/yQ;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/android/tools/r8/internal/zQ;->e:Lcom/android/tools/r8/internal/yQ;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/zQ;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lcom/android/tools/r8/internal/yQ;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/zQ;->d:Lcom/android/tools/r8/internal/yQ;

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/tools/r8/internal/BQ;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/zQ;->c:Ljava/util/ArrayList;

    return-object v0
.end method
