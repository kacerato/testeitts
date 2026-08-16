.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a;->b(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$4",
            "val$steps",
            "val$count",
            "val$p"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a;

    iput p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a$a;->b:I

    iput p3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a$a;->c:I

    iput p4, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a$a;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a$a;->e:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c;

    iget-object v0, v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;

    iget v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a$a;->b:I

    iget v2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a$a;->c:I

    iget v3, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$c$a$a$a$a;->d:I

    invoke-interface {v0, v1, v2, v3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/n$i;->c(III)V

    return-void
.end method
