.class public Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "path",
            "astcPath",
            "isAsset",
            "inputFile"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->c:Z

    iput-object p4, p0, Lcom/itsmagic/engine/Engines/Engine/Texture/Utils/b$d;->d:Ljava/lang/String;

    return-void
.end method
