.class public abstract Lh4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh4/c;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/io/File;Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;)Lh4/a;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "file",
            "data"
        }
    .end annotation
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lh4/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "format"
        }
    .end annotation

    iput-object p1, p0, Lh4/c;->a:Ljava/lang/String;

    return-void
.end method
