//
//  Supabase.swift
//  TodoList
//
//  Created by Pablo Alvarado on 23/05/24.
//

import Foundation
import Supabase

let supabase = SupabaseClient(
  supabaseURL: URL(string: "https://bfpwtpvbhiyunhhroutk.supabase.co")!,
  supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImJmcHd0cHZiaGl5dW5oaHJvdXRrIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTYyOTczMTksImV4cCI6MjAzMTg3MzMxOX0.Bj7RcRSV3MvX11vD5VgnWmi99ZHR0pKUth12yGSjNNc"
)
