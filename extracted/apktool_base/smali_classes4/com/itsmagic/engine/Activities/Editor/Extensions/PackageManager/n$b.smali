.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->q(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;

.field public final synthetic d:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$pack",
            "val$importListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$b;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    iput-object p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$b;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$b;->d:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$b;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$b$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$b$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$b;)V

    invoke-static {v0, v1, v2}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;->f(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/a$l;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$j;)V

    return-void
.end method
