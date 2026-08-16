.class public LB4/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LB4/b;-><init>(LB4/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LB4/b;


# direct methods
.method public constructor <init>(LB4/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LB4/b$b;->a:LB4/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LF7/i;Landroid/content/Context;LF7/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eElement",
            "context",
            "textViewAppearance"
        }
    .end annotation

    instance-of p2, p1, LB4/b;

    if-eqz p2, :cond_1

    check-cast p1, LB4/b;

    invoke-virtual {p1}, LB4/b;->u()LB4/a;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-boolean p1, p1, LB4/a;->a:Z

    if-eqz p1, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p3, LF7/e;->a:I

    return-void

    :cond_0
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->BACKGROUND:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p3, LF7/e;->a:I

    return-void

    :cond_1
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p3, LF7/e;->a:I

    return-void
.end method
