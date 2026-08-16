.class public Lcom/android/tools/r8/internal/AW;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Collection;


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/AW;->a:Ljava/util/Collection;

    return-void
.end method

.method public static a([B)Lcom/android/tools/r8/internal/AW;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const/16 p0, 0x3b

    .line 3
    invoke-static {v0, p0}, Lcom/android/tools/r8/internal/zq0;->a(Ljava/lang/String;C)Ljava/util/List;

    move-result-object p0

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/AW;

    invoke-direct {v0, p0}, Lcom/android/tools/r8/internal/AW;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/tools/r8/internal/AW;->a:Ljava/util/Collection;

    return-object v0
.end method
