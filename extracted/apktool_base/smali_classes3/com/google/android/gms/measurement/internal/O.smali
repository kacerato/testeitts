.class public final synthetic Lcom/google/android/gms/measurement/internal/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/measurement/internal/P;


# static fields
.field public static final synthetic a:Lcom/google/android/gms/measurement/internal/O;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/measurement/internal/O;

    invoke-direct {v0}, Lcom/google/android/gms/measurement/internal/O;-><init>()V

    sput-object v0, Lcom/google/android/gms/measurement/internal/O;->a:Lcom/google/android/gms/measurement/internal/O;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic N1()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/google/android/gms/internal/measurement/h7;->a()Z

    move-result v0

    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Ljava/lang/Boolean;-><init>(Z)V

    return-object v1
.end method
