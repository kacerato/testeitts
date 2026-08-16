.class public interface abstract Leg/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyf/j$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leg/N$a;,
        Leg/N$b;
    }
.end annotation


# static fields
.field public static final x4:Leg/N$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Leg/N$b;->b:Leg/N$b;

    sput-object v0, Leg/N;->x4:Leg/N$b;

    return-void
.end method


# virtual methods
.method public abstract q(Lyf/j;Ljava/lang/Throwable;)V
    .param p1    # Lyf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
