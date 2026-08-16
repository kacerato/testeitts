.class public abstract Lcom/android/tools/r8/internal/wu0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/xu0;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/tools/r8/internal/xu0;

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/xu0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/wu0;->a:Lcom/android/tools/r8/internal/xu0;

    return-void
.end method
