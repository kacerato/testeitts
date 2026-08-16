.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->o0(Ljava/io/File;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/File;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$k;


# direct methods
.method public constructor <init>(Ljava/io/File;ZLcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$k;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$cached",
            "val$keepRootReadmeOnImport",
            "val$listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$b;->b:Ljava/io/File;

    iput-boolean p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$b;->c:Z

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$b;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$b;->b:Ljava/io/File;

    iget-boolean v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$b;->c:Z

    invoke-static {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->a(Ljava/io/File;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$b;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$k;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$b;->b:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$k;->b(Ljava/io/File;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$b;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$k;

    invoke-interface {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$k;->a()V

    :goto_0
    return-void
.end method
