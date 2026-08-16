.class public final synthetic Lv3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv1/e;


# instance fields
.field public final synthetic a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

.field public final synthetic b:Lo2/b;


# direct methods
.method public synthetic constructor <init>(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Lo2/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv3/f;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iput-object p2, p0, Lv3/f;->b:Lo2/b;

    return-void
.end method


# virtual methods
.method public final a(Lv1/k;)V
    .locals 2

    iget-object v0, p0, Lv3/f;->a:Lcom/itsmagic/engine/Activities/Editor/EditorActivity;

    iget-object v1, p0, Lv3/f;->b:Lo2/b;

    invoke-static {v0, v1, p1}, Lcom/itsmagic/engine/Activities/Editor/EditorActivity;->g(Lcom/itsmagic/engine/Activities/Editor/EditorActivity;Lo2/b;Lv1/k;)V

    return-void
.end method
