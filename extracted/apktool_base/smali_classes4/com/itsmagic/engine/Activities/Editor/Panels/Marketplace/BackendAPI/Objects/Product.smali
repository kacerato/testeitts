.class public Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Description;,
        Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Tittle;,
        Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$GenericReview;,
        Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Statistic;,
        Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Tag;,
        Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Image;,
        Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$UserReview;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x2

.field public static final i:I = 0x3


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Landroid/graphics/drawable/Drawable;

.field private canReview:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private createdAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private currentVersion:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final description:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Description;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private genericReview:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$GenericReview;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private hasIcon:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private id:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final imageList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Image;",
            ">;"
        }
    .end annotation
.end field

.field private owner:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private priceCurrency:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private priceValue:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final statistic:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Statistic;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private status:I
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private final tagList:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Tag;",
            ">;"
        }
    .end annotation
.end field

.field private final tittle:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Tittle;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private updatedAt:Ljava/util/Date;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private userBought:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private userID:J
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private userName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->createdAt:Ljava/util/Date;

    .line 3
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->updatedAt:Ljava/util/Date;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->userBought:Z

    .line 5
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->owner:Z

    .line 6
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->hasIcon:Z

    .line 7
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->canReview:Z

    .line 8
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Description;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Description;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->description:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Description;

    .line 9
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Tittle;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Tittle;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->tittle:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Tittle;

    .line 10
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->imageList:Ljava/util/List;

    .line 11
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$GenericReview;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$GenericReview;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->genericReview:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$GenericReview;

    .line 12
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->tagList:Ljava/util/List;

    .line 13
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Statistic;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Statistic;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->statistic:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Statistic;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->createdAt:Ljava/util/Date;

    .line 16
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->updatedAt:Ljava/util/Date;

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->userBought:Z

    .line 18
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->owner:Z

    .line 19
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->hasIcon:Z

    .line 20
    iput-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->canReview:Z

    .line 21
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Description;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Description;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->description:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Description;

    .line 22
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Tittle;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Tittle;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->tittle:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Tittle;

    .line 23
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->imageList:Ljava/util/List;

    .line 24
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$GenericReview;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$GenericReview;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->genericReview:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$GenericReview;

    .line 25
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->tagList:Ljava/util/List;

    .line 26
    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Statistic;

    invoke-direct {v0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Statistic;-><init>()V

    iput-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->statistic:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Statistic;

    .line 27
    iput-wide p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->id:J

    return-void
.end method

.method public static d(Lorg/json/JSONObject;)Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "json"
        }
    .end annotation

    :try_start_0
    invoke-static {}, LX7/a;->m()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to deserialize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public A(I)Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Tag;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->tagList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Tag;

    return-object p1
.end method

.method public B()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->tagList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->canReview:Z

    return v0
.end method

.method public b(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "product"
        }
    .end annotation

    iget-wide v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->id:J

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->j()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->tagList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->tagList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Tag;

    invoke-virtual {v2}, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Tag;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public e()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->createdAt:Ljava/util/Date;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->currentVersion:I

    return v0
.end method

.method public g()Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Description;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->description:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Description;

    return-object v0
.end method

.method public h()Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$GenericReview;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->genericReview:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$GenericReview;

    return-object v0
.end method

.method public i()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->b:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public j()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->id:J

    return-wide v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->priceCurrency:I

    return v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->priceValue:I

    return v0
.end method

.method public m()Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Statistic;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->statistic:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Statistic;

    return-object v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->status:I

    return v0
.end method

.method public o()Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Tittle;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->tittle:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Tittle;

    return-object v0
.end method

.method public p()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->updatedAt:Ljava/util/Date;

    return-object v0
.end method

.method public q()J
    .locals 2

    iget-wide v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->userID:J

    return-wide v0
.end method

.method public r()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->userName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "base64@"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->userName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, LVc/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->userName:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BASE64 WAS DECODED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " TIMES!!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->userName:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public t(I)Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Image;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->imageList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product$Image;

    return-object p1
.end method

.method public u()I
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->imageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->userBought:Z

    return v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->hasIcon:Z

    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->owner:Z

    return v0
.end method

.method public y(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iconCache"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public z(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userPointer"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;->a:Ljava/lang/Object;

    return-void
.end method
