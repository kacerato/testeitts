.class public Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$a;,
        Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;
    }
.end annotation


# static fields
.field public static a:Z = false

.field public static final b:I = 0x5

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/GIAP/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/GIAP/b;",
            ">;"
        }
    .end annotation
.end field

.field public static e:Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$SerializedData;

.field public static final f:Ljava/lang/Object;

.field public static g:Z

.field public static h:I

.field public static final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Lt3/a;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-boolean v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->a:Z

    :cond_0
    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->c:Ljava/util/List;

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->d:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->f:Ljava/lang/Object;

    sput-boolean v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->g:Z

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    invoke-direct {v0}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>()V

    sput-object v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->i:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/GIAP$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "connectListener"
        }
    .end annotation

    return-void
.end method

.method public static b(Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "purchase"
        }
    .end annotation

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "downloadListener"
        }
    .end annotation

    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/itsmagic/engine/Core/Components/GIAP/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "downloadListener"
        }
    .end annotation

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    return-void
.end method

.method public static f()I
    .locals 1

    sget v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->h:I

    return v0
.end method

.method public static g()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/GIAP/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    sget-object v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static h()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    sget-object v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static i()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itsmagic/engine/Core/Components/GIAP/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;

    sget-object v1, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Engines/Utils/ListUtils/SteppedArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static j(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    return-void
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->g:Z

    return v0
.end method

.method public static l()V
    .locals 0

    return-void
.end method

.method public static m(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    const-string v0, "GIAP"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static n(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    invoke-static {p0}, Lcom/itsmagic/engine/Core/Components/GIAP/GIAP;->o(Landroid/content/Context;)V

    return-void
.end method

.method public static o(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    return-void
.end method

.method public static p(Landroid/app/Activity;Lcom/itsmagic/engine/Core/Components/GIAP/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "product"
        }
    .end annotation

    return-void
.end method

.method public static q(Landroid/app/Activity;Lcom/itsmagic/engine/Core/Components/GIAP/b;Lcom/itsmagic/engine/Core/Components/GIAP/b$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "product",
            "subPlan"
        }
    .end annotation

    return-void
.end method
