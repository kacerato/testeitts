.class public Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field private acknow:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private acknowledged:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field public b:I

.field public c:Z

.field private consumed:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private orderID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private packageName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private productID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private state:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private subscription:Z
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private time:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field

.field private token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "orderID",
            "packageName",
            "productID",
            "time",
            "state",
            "token"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->orderID:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->packageName:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->productID:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->time:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->state:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->token:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "orderID",
            "packageName",
            "productID",
            "time",
            "state",
            "token",
            "isSubscription",
            "isAcknowledged"
        }
    .end annotation

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->orderID:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->packageName:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->productID:Ljava/lang/String;

    .line 13
    iput-object p4, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->time:Ljava/lang/String;

    .line 14
    iput-object p5, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->state:Ljava/lang/String;

    .line 15
    iput-object p6, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->token:Ljava/lang/String;

    .line 16
    iput-boolean p7, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->subscription:Z

    .line 17
    iput-boolean p8, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->acknowledged:Z

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->token:Ljava/lang/String;

    return-void
.end method

.method public a()V
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->a:I

    return-void
.end method

.method public b()V
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->b:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->a:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->orderID:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->productID:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->b:I

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->state:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->time:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->token:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->acknow:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->acknowledged:Z

    return v0
.end method

.method public m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->consumed:Z

    return v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->c:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->subscription:Z

    return v0
.end method

.method public p(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "acknow"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->acknow:Z

    return-void
.end method

.method public q(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "acknowledged"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->acknowledged:Z

    return-void
.end method

.method public r()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->consumed:Z

    return-void
.end method

.method public s(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orderID"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->orderID:Ljava/lang/String;

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->packageName:Ljava/lang/String;

    return-void
.end method

.method public u(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "productID"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->productID:Ljava/lang/String;

    return-void
.end method

.method public v()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->c:Z

    return-void
.end method

.method public w(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sent"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->c:Z

    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->state:Ljava/lang/String;

    return-void
.end method

.method public y(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subscription"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->subscription:Z

    return-void
.end method

.method public z(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Core/Components/GIAP/IPPurchase;->time:Ljava/lang/String;

    return-void
.end method
