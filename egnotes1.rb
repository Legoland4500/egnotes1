use_bpm 143

define :modem do |a, b, c, d|
  use_synth :pretty_bell
  play a
  sleep 1/2.0
  play b
  sleep 1/2.0
  play c
  sleep 1/2.0
  play d
  sleep 1/2.0
end

define :threes do |a, b, c|
  play a, sustain: 0.5, amp: 2
  play b, sustain: 0.5, amp: 2
  play c, sustain: 0.5, amp: 2
end

live_loop :drum do
  11.times do
    sample :bd_zum
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_snare_soft
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :bd_zum
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :bd_zum
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_snare_soft
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
  end
  sample :drum_roll, sustain: 2
  stop
end

sleep 16

live_loop :synth1 do
  4.times do
    3.times do
      modem :f4, :d4, :f4, :e4
    end
    modem :f4, :d4, :g4, :e4
  end
  stop
end

live_loop :synth2 do
  2.times do
    2.times do
      use_synth :kalimba
      threes :e3, :g3, :b3
      sleep 1.5
      threes :e3, :g3, :b3
      sleep 0.5
      threes :e3, :g3, :b3
      sleep 2.0
    end
    2.times do
      use_synth :kalimba
      threes :d3, :e3, :b3
      sleep 1.5
      threes :d3, :e3, :b3
      sleep 0.5
      threes :d3, :e3, :b3
      sleep 2.0
    end
  end
  stop
end

sleep 32
sample :drum_splash_hard

live_loop :maindrum do
  11.times do
    sample :bd_zum, amp: 2
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_snare_hard
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :bd_zum, amp: 2
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :bd_zum, amp: 2
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_snare_hard
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
    sample :drum_cymbal_closed, amp: 0.5
    sleep 1/2.0
  end
  sample :drum_roll, sustain: 2
  stop
end
