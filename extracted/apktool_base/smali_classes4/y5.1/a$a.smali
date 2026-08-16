.class public Ly5/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly5/a;->C0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ly5/a;


# direct methods
.method public constructor <init>(Ly5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ly5/a$a;->b:Ly5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-static {}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang;->p()Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/LanguageSystem/Lang$d;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "pt-br"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "https://www.youtube.com/live/EV9hEOHZTLU?si=ir0lzsdxakRCD6dn"

    invoke-static {p1}, LIc/i;->n(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "https://youtu.be/S-umsF3Dq3o?si=4cuGwnyzumusBMnM"

    invoke-static {p1}, LIc/i;->n(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
