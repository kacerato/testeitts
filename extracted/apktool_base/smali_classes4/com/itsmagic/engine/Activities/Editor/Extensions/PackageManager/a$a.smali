.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a;->G(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$listener",
            "val$out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    invoke-interface {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$p;->c(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;)V

    return-void
.end method
