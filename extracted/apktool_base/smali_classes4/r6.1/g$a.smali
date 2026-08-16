.class public Lr6/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF7/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lr6/g;-><init>(Ljava/lang/String;Lr6/f;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr6/g;


# direct methods
.method public constructor <init>(Lr6/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lr6/g$a;->a:Lr6/g;

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

    sget-object p1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LAc/b;

    invoke-static {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result p1

    iput p1, p3, LF7/e;->a:I

    return-void
.end method
