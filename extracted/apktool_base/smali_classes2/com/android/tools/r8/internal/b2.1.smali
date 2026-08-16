.class public interface abstract Lcom/android/tools/r8/internal/b2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final a:Lcom/android/tools/r8/internal/b2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/v51;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/v51;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/b2;->a:Lcom/android/tools/r8/internal/b2;

    return-void
.end method

.method public static synthetic b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method
