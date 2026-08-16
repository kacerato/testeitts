.class public Lj6/b;
.super LH7/a;
.source "SourceFile"


# static fields
.field public static final i:I = 0x3


# instance fields
.field public h:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, LH7/a;-><init>()V

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

    .line 4
    invoke-direct {p0, p1}, LH7/a;-><init>(LS5/a;)V

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

    .line 2
    invoke-direct {p0, p1}, LH7/a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/Objects/Product;)V

    return-void
.end method

.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pack"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, LH7/a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Panels/Marketplace/BackendAPI/v2/Package;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "file"
        }
    .end annotation

    const/4 v0, 0x3

    .line 5
    invoke-direct {p0, v0}, LH7/a;-><init>(I)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    iput-object p1, p0, Lj6/b;->h:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public e()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lj6/b;->h:Ljava/io/File;

    return-object v0
.end method
