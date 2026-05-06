plugins {
    id("com.android.library")
    id("org.jetbrains.kotlin.android") version "2.0.21"
    id("kotlin-parcelize")
}

group = "com.mhz.savegallery.saver_gallery"
version = "1.0-SNAPSHOT"

android {
    namespace = "com.mhz.savegallery.saver_gallery"
    compileSdk = 37

    defaultConfig {
        minSdk = 24
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_21
        targetCompatibility = JavaVersion.VERSION_21
    }

    kotlin {
        compilerOptions {
            jvmTarget.set(org.jetbrains.kotlin.gradle.dsl.JvmTarget.JVM_21)
        }
    }

    sourceSets {
        getByName("main") {
            java.srcDir("src/main/kotlin")
        }
    }
}

dependencies {
    implementation(kotlin("stdlib"))
}