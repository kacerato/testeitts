.class public LH7/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2


# instance fields
.field public a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;

.field public b:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

.field public c:LS5/a;

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, LH7/a;->c:LS5/a;

    .line 23
    iput-object v0, p0, LH7/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;

    .line 24
    iput-object v0, p0, LH7/a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    const/4 v0, 0x2

    .line 25
    iput v0, p0, LH7/a;->d:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, LH7/a;->c:LS5/a;

    .line 18
    iput-object v0, p0, LH7/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;

    .line 19
    iput-object v0, p0, LH7/a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    .line 20
    iput p1, p0, LH7/a;->d:I

    return-void
.end method

.method public constructor <init>(LS5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "announcement"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, LH7/a;->c:LS5/a;

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, LH7/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;

    .line 14
    iput-object p1, p0, LH7/a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    const/4 p1, 0x1

    .line 15
    iput p1, p0, LH7/a;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "product"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LH7/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, LH7/a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    .line 4
    iput-object p1, p0, LH7/a;->c:LS5/a;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, LH7/a;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v2Package"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, LH7/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;

    .line 8
    iput-object p1, p0, LH7/a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    .line 9
    iput-object v0, p0, LH7/a;->c:LS5/a;

    const/4 p1, 0x0

    .line 10
    iput p1, p0, LH7/a;->d:I

    return-void
.end method


# virtual methods
.method public a()LS5/a;
    .locals 1

    iget-object v0, p0, LH7/a;->c:LS5/a;

    return-object v0
.end method

.method public b()Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;
    .locals 1

    iget-object v0, p0, LH7/a;->b:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;

    return-object v0
.end method

.method public c()Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;
    .locals 1

    iget-object v0, p0, LH7/a;->a:Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LH7/a;->d:I

    return v0
.end method
