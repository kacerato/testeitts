.class public Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;->j(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$f;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

.field public final synthetic c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;


# direct methods
.method public constructor <init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$down"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$c;->c:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h;

    iput-object p2, p0, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$c;->b:Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/g$o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ldd/b;

    new-instance v2, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$c$a;

    invoke-direct {v2, p0}, Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$c$a;-><init>(Lcom/itsmagic/engine/Activities/Editor/Extensions/PackageManager/h$c;)V

    const-string v3, "Remove"

    invoke-direct {v1, v3, v2}, Ldd/b;-><init>(Ljava/lang/String;Ldd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lr4/a$e;->Below:Lr4/a$e;

    invoke-static {p1, v1, v0}, LY6/a;->F1(Landroid/view/View;Lr4/a$e;Ljava/util/List;)V

    return-void
.end method
