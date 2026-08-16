.class public Li5/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LM7/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li5/b;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Li5/b;


# direct methods
.method public constructor <init>(Li5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Li5/b$c;->a:Li5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;LM7/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    sget-object p3, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$T;->INTENSITY:LAc/b;

    invoke-static {p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->l(LAc/b;)Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lr4/a$e;->Below:Lr4/a$e;

    new-instance v1, Li5/b$c$a;

    invoke-direct {v1, p0}, Li5/b$c$a;-><init>(Li5/b$c;)V

    invoke-static {p1, p3, p2, v0, v1}, Lt5/i;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Lr4/a$e;Lt5/i$e;)V

    return-void
.end method
