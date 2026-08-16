.class public Lx4/a$f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx4/a$f;-><init>(Lx4/a$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lx4/a$e;

.field public final synthetic b:Lx4/a$f;


# direct methods
.method public constructor <init>(Lx4/a$f;Lx4/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$node"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lx4/a$f$c;->b:Lx4/a$f;

    iput-object p2, p0, Lx4/a$f$c;->a:Lx4/a$e;

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

    iget-object p1, p0, Lx4/a$f$c;->a:Lx4/a$e;

    invoke-static {p1}, Lx4/a$e;->d(Lx4/a$e;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->HIGH_TEXT_COLOR:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p3, LF7/e;->a:I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->MID_TEXT_COLOR:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p3, LF7/e;->a:I

    :goto_0
    return-void
.end method
