.class public final Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(ILcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;)Lk0/f;
    .locals 1
    .param p1    # Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l$a;->b(ILcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/g;Ljava/lang/String;Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/w;)Lk0/f;

    move-result-object p0

    return-object p0
.end method

.method public static final b(ILjava/lang/String;Ljava/lang/String;[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;)Lk0/f;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # [Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l$a;->c(ILjava/lang/String;Ljava/lang/String;[Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/v;)Lk0/f;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Ljava/lang/String;ILk0/a;Ljava/lang/String;)Lk0/h;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lk0/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime LLf/o;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l;->a:Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l$a;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/itsmagic/engine/Activities/Editor/Extensions/AIAgent/l$a;->d(Ljava/lang/String;ILk0/a;Ljava/lang/String;)Lk0/h;

    move-result-object p0

    return-object p0
.end method
