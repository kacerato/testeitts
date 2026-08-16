.class public final Lcom/android/tools/r8/internal/NQ$c;
.super Lcom/android/tools/r8/internal/NQ;
.source "SourceFile"


# annotations
.annotation runtime Lcom/android/tools/r8/internal/tW;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000f\u0018\u00002\u00020\u0001B%\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\nB\u0019\u0008\u0010\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0006\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0004\u0008\t\u0010\u000fJ\u0008\u0010\u001c\u001a\u00020\u000cH\u0016R \u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u0006X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0007\u001a\u00020\u0008X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001b\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlin/metadata/jvm/KotlinClassMetadata$MultiFileClassFacade;",
        "Lkotlin/metadata/jvm/KotlinClassMetadata;",
        "partClassNames",
        "",
        "",
        "version",
        "Lkotlin/metadata/jvm/JvmMetadataVersion;",
        "flags",
        "",
        "<init>",
        "(Ljava/util/List;Lkotlin/metadata/jvm/JvmMetadataVersion;I)V",
        "annotationData",
        "Lkotlin/Metadata;",
        "lenient",
        "",
        "(Lkotlin/Metadata;Z)V",
        "getPartClassNames",
        "()Ljava/util/List;",
        "setPartClassNames",
        "(Ljava/util/List;)V",
        "getVersion",
        "()Lkotlin/metadata/jvm/JvmMetadataVersion;",
        "setVersion",
        "(Lkotlin/metadata/jvm/JvmMetadataVersion;)V",
        "getFlags",
        "()I",
        "setFlags",
        "(I)V",
        "write",
        "kotlin-metadata-jvm"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/internal/NQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public b:Ljava/util/List;

.field public c:Lcom/android/tools/r8/internal/ML;

.field public final d:I


# direct methods
.method public constructor <init>(Lcom/android/tools/r8/kotlin/S;)V
    .locals 3

    iget-object v0, p1, Lcom/android/tools/r8/kotlin/S;->c:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/tools/r8/internal/a4;->a([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/tools/r8/internal/ML;

    iget-object v2, p1, Lcom/android/tools/r8/kotlin/S;->b:[I

    invoke-direct {v1, v2}, Lcom/android/tools/r8/internal/ML;-><init>([I)V

    iget p1, p1, Lcom/android/tools/r8/kotlin/S;->e:I

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/tools/r8/internal/NQ;-><init>(I)V

    iput-object v0, p0, Lcom/android/tools/r8/internal/NQ$c;->b:Ljava/util/List;

    iput-object v1, p0, Lcom/android/tools/r8/internal/NQ$c;->c:Lcom/android/tools/r8/internal/ML;

    iput p1, p0, Lcom/android/tools/r8/internal/NQ$c;->d:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/tools/r8/internal/NQ;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/android/tools/r8/internal/ML;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/NQ$c;->c:Lcom/android/tools/r8/internal/ML;

    return-object v0
.end method

.method public final a(Lcom/android/tools/r8/internal/ML;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/GJ;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/android/tools/r8/internal/NQ$c;->c:Lcom/android/tools/r8/internal/ML;

    return-void
.end method

.method public final b()Lcom/android/tools/r8/internal/KL;
    .locals 8

    iget-boolean v0, p0, Lcom/android/tools/r8/internal/NQ;->a:Z

    const-string v1, "multi-file class facade"

    invoke-static {v1, v0}, Lcom/android/tools/r8/internal/OQ;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/tools/r8/internal/NQ$c;->c:Lcom/android/tools/r8/internal/ML;

    invoke-static {v0}, Lcom/android/tools/r8/internal/OQ;->a(Lcom/android/tools/r8/internal/ML;)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, p0, Lcom/android/tools/r8/internal/NQ$c;->c:Lcom/android/tools/r8/internal/ML;

    iget v2, v0, Lcom/android/tools/r8/internal/ML;->b:I

    iget v3, v0, Lcom/android/tools/r8/internal/ML;->c:I

    iget v0, v0, Lcom/android/tools/r8/internal/ML;->d:I

    filled-new-array {v2, v3, v0}, [I

    move-result-object v2

    iget-object v0, p0, Lcom/android/tools/r8/internal/NQ$c;->b:Ljava/util/List;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    iget v0, p0, Lcom/android/tools/r8/internal/NQ$c;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x38

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v1 .. v7}, Lcom/android/tools/r8/internal/LL;->a(Ljava/lang/Integer;[I[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Lcom/android/tools/r8/internal/KL;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/tools/r8/internal/NQ$c;->b:Ljava/util/List;

    return-object v0
.end method
