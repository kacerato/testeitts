.class public abstract Lcom/android/tools/r8/internal/Bo0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/android/tools/r8/internal/zo0;

.field public static final b:Lcom/android/tools/r8/internal/Ao0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/tools/r8/internal/zo0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/zo0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Bo0;->a:Lcom/android/tools/r8/internal/zo0;

    new-instance v0, Lcom/android/tools/r8/internal/Ao0;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/Ao0;-><init>()V

    sput-object v0, Lcom/android/tools/r8/internal/Bo0;->b:Lcom/android/tools/r8/internal/Ao0;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/android/tools/r8/internal/Iw0;)Lcom/android/tools/r8/internal/Iw0;
.end method

.method public abstract a(Lcom/android/tools/r8/internal/pg;)Lcom/android/tools/r8/internal/wX;
.end method
