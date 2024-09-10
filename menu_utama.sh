#!/bin/bash

# Manggil file eksternal
source ./bahan.sh  # ini buat manggil file eksternal lo

# Menu buat Spam Tools
spam_menu() {
    clear
    echo "1. Install Brutal-W4"
    echo "2. Install TZspam"
    echo "0. Kembali ke menu utama"
    read -p "Pilih opsi: " spam_choice

    case $spam_choice in
        1)
            install_brutal_w4  # Panggil fungsi dari file eksternal
            ;;
        2)
            install_tzspam  # Panggil fungsi dari file eksternal
            ;;
        0)
            main_menu
            ;;
        *)
            echo "Pilihan tidak valid."
            spam_menu
            ;;
    esac
}

# Menu utama
main_menu() {
    clear
    echo "1. Spam Menu"
    echo "0. Keluar"
    read -p "Pilih menu: " choice

    case $choice in
        1)
            spam_menu
            ;;
        0)
            echo "Keluar..."
            exit 0
            ;;
        *)
            echo "Pilihan tidak valid."
            main_menu
            ;;
    esac
}

# Mulai dari menu utama
main_menu
