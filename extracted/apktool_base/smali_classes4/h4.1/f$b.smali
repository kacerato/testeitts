.class public Lh4/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh4/f;->d(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/lang/String;",
        "Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Lh4/f;


# direct methods
.method public constructor <init>(Lh4/f;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lh4/f$b;->c:Lh4/f;

    iput-object p2, p0, Lh4/f$b;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    new-instance p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;

    invoke-direct {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;-><init>()V

    iget-object v0, p0, Lh4/f$b;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->dateModified:J

    iget-object v0, p0, Lh4/f$b;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;->fileSizeBytes:J

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "s"
        }
    .end annotation

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lh4/f$b;->a(Ljava/lang/String;)Lcom/itsmagic/engine/Activities/Editor/Extensions/VCS/HashData;

    move-result-object p1

    return-object p1
.end method
