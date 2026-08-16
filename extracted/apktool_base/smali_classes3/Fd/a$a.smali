.class public final LFd/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFd/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFd/a$a$a;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "autoplay"

.field public static final c:Ljava/lang/String; = "controls"

.field public static final d:Ljava/lang/String; = "enablejsapi"

.field public static final e:Ljava/lang/String; = "fs"

.field public static final f:Ljava/lang/String; = "origin"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Ljava/lang/String; = "rel"

.field public static final h:Ljava/lang/String; = "showinfo"

.field public static final i:Ljava/lang/String; = "iv_load_policy"

.field public static final j:Ljava/lang/String; = "modestbranding"

.field public static final k:Ljava/lang/String; = "cc_load_policy"

.field public static final l:Ljava/lang/String; = "cc_lang_pref"

.field public static final m:LFd/a$a$a;


# instance fields
.field public final a:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LFd/a$a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LFd/a$a$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, LFd/a$a;->m:LFd/a$a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, LFd/a$a;->a:Lorg/json/JSONObject;

    const-string v0, "autoplay"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, LFd/a$a;->a(Ljava/lang/String;I)V

    const-string v0, "controls"

    invoke-virtual {p0, v0, v1}, LFd/a$a;->a(Ljava/lang/String;I)V

    const-string v0, "enablejsapi"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, LFd/a$a;->a(Ljava/lang/String;I)V

    const-string v0, "fs"

    invoke-virtual {p0, v0, v1}, LFd/a$a;->a(Ljava/lang/String;I)V

    const-string v0, "origin"

    const-string v3, "https://www.youtube.com"

    invoke-virtual {p0, v0, v3}, LFd/a$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rel"

    invoke-virtual {p0, v0, v1}, LFd/a$a;->a(Ljava/lang/String;I)V

    const-string v0, "showinfo"

    invoke-virtual {p0, v0, v1}, LFd/a$a;->a(Ljava/lang/String;I)V

    const-string v0, "iv_load_policy"

    const/4 v3, 0x3

    invoke-virtual {p0, v0, v3}, LFd/a$a;->a(Ljava/lang/String;I)V

    const-string v0, "modestbranding"

    invoke-virtual {p0, v0, v2}, LFd/a$a;->a(Ljava/lang/String;I)V

    const-string v0, "cc_load_policy"

    invoke-virtual {p0, v0, v1}, LFd/a$a;->a(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, LFd/a$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal JSON value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, LFd/a$a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal JSON value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()LFd/a;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LFd/a;

    iget-object v1, p0, LFd/a$a;->a:Lorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LFd/a;-><init>(Lorg/json/JSONObject;Lkotlin/jvm/internal/x;)V

    return-object v0
.end method

.method public final d(I)LFd/a$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "cc_load_policy"

    invoke-virtual {p0, v0, p1}, LFd/a$a;->a(Ljava/lang/String;I)V

    return-object p0
.end method

.method public final e(I)LFd/a$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "controls"

    invoke-virtual {p0, v0, p1}, LFd/a$a;->a(Ljava/lang/String;I)V

    return-object p0
.end method

.method public final f(I)LFd/a$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "iv_load_policy"

    invoke-virtual {p0, v0, p1}, LFd/a$a;->a(Ljava/lang/String;I)V

    return-object p0
.end method

.method public final g(Ljava/lang/String;)LFd/a$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "languageCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cc_lang_pref"

    invoke-virtual {p0, v0, p1}, LFd/a$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final h(Ljava/lang/String;)LFd/a$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "origin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->q(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1}, LFd/a$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public final i(I)LFd/a$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "rel"

    invoke-virtual {p0, v0, p1}, LFd/a$a;->a(Ljava/lang/String;I)V

    return-object p0
.end method
