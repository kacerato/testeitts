.class public Lcom/itsmagic/engine/Engines/Engine/Settings/AdmobSettings;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/Expose;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/AdmobSettings;->token:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/itsmagic/engine/Engines/Engine/Settings/c;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/itsmagic/engine/Engines/Engine/Settings/c;",
            ")",
            "Ljava/util/List<",
            "LC5/b;",
            ">;"
        }
    .end annotation

    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    new-instance p1, LC5/b;

    new-instance v0, Lcom/itsmagic/engine/Engines/Engine/Settings/AdmobSettings$a;

    invoke-direct {v0, p0}, Lcom/itsmagic/engine/Engines/Engine/Settings/AdmobSettings$a;-><init>(Lcom/itsmagic/engine/Engines/Engine/Settings/AdmobSettings;)V

    const-string v1, "App ID"

    sget-object v2, LC5/b$a;->SLString:LC5/b$a;

    invoke-direct {p1, v0, v1, v2}, LC5/b;-><init>(LD5/h;Ljava/lang/String;LC5/b$a;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p1, LC5/b;

    new-instance v0, Lbd/a;

    const-string v1, "Attention, using an incorrect App ID results in the immediate crash of the game when exporting in APK/AAB due to the checks performed by Google Admob, we have no way to prevent this. Make sure you use a valid code."

    const-string v2, "Aten\u00e7\u00e3o, o uso de um App ID incorreto resulta no crash imediato do jogo logo ao exportar em APK/AAB devido as verifica\u00e7\u00f5es realizadas pelo google admob, n\u00e3o temos como impedir isso. Tenha certeza de usar um codigo valido."

    invoke-direct {v0, v1, v2}, Lbd/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbd/a;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme$T;->ACCENT:LAc/b;

    invoke-static {v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/ThemeSystem/Theme;->i(LAc/b;)I

    move-result v1

    const/16 v2, 0xc

    invoke-direct {p1, v0, v2, v1}, LC5/b;-><init>(Ljava/lang/String;II)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/AdmobSettings;->token:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "token"
        }
    .end annotation

    iput-object p1, p0, Lcom/itsmagic/engine/Engines/Engine/Settings/AdmobSettings;->token:Ljava/lang/String;

    return-void
.end method
