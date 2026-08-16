.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo4/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->k()Lcom/itsmagic/engine/Activities/Editor/Interface/Objects/EditorPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$newPanel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$e;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->q1()Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    move-result-object v0

    iget-object v1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$e;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;->s1(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;)Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g;

    :cond_0
    return-void
.end method
